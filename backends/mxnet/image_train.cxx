/*!
 * Copyright (c) 2016 by Contributors
 */
#include <vector>
#include <string>
#include <cassert>
#include <map>

#include "include/symbol.h"
#include "include/optimizer.h"
#include "include/initializer.h"
#include "image_train.hpp"

using namespace mxnet::cpp;

ImageTrain::ImageTrain(int w, int h, int c, int device, int seed, bool gpu) {
  width = w;
  height = h;
  channels = c;
  learning_rate = 1e-4;
  weight_decay = 1e-4;
  momentum = 0.9;
  clip_gradient = 10;
  is_built = false;
  setSeed(seed);
#if MSHADOW_USE_CUDA == 0
  ctx_dev = Context(DeviceType::kCPU, device);
#else
  if (!gpu) 
    ctx_dev = Context(DeviceType::kCPU, device);
  else 
    ctx_dev = Context(DeviceType::kGPU, device);
#endif
}

void ImageTrain::setSeed(int seed) {
  CHECK_EQ(MXRandomSeed(seed), 0);
}

void ImageTrain::setOptimizer(int n, int b) {
  batch_size = b;
  num_classes = n;

  preds.resize(num_classes * batch_size);

  opt = std::unique_ptr<Optimizer>(new Optimizer("ccsgd", learning_rate, weight_decay));
  opt->SetParam("momentum", momentum);
  opt->SetParam("rescale_grad", 1.0 / batch_size);
  opt->SetParam("clip_gradient", clip_gradient);

  args_map["data"] = NDArray(Shape(batch_size, channels, width, height), ctx_dev);
  args_map["softmax_label"] = NDArray(Shape(batch_size), ctx_dev);
  mxnet_sym.InferArgsMap(ctx_dev, &args_map, args_map);

/*
  std::vector<NDArray> arg_arrays;
  std::vector<NDArray> grad_arrays;
  std::vector<OpReqType> grad_reqs;
  std::vector<NDArray> aux_arrays;
  mxnet_sym.InferExecutorArrays(
      ctx_dev, 
      &arg_arrays,
      &grad_arrays, 
      &grad_reqs,
      &aux_arrays,
      args_map,
      std::map<std::string, NDArray>(),
      std::map<std::string, OpReqType>(),
      aux_map);
*/

  exec = std::unique_ptr<Executor>(mxnet_sym.SimpleBind(ctx_dev, args_map
//,std::map<std::string, NDArray>(),
//      std::map<std::string, OpReqType>(), aux_map
));

  args_map = exec->arg_dict();

  Xavier xavier = Xavier(Xavier::gaussian, Xavier::in, 2.34);
  for (auto &arg : args_map) {
    xavier(arg.first, &arg.second);
  }

  aux_map = exec->aux_dict();
  for (auto &aux : aux_map) {
    xavier(aux.first, &aux.second);
  }
  is_built = true;
}

void ImageTrain::buildNet(int n, int b, char * n_name) {
  std::string net_name(n_name);
  assert(net_name == "inception_bn" ||
         net_name == "vgg" ||
         net_name == "lenet" ||
         net_name == "alexnet" ||
         net_name == "googlenet" ||
         net_name == "resnet");

  if (net_name == "inception_bn") {
    mxnet_sym = InceptionSymbol(n);
  } else if (net_name == "vgg") {
    mxnet_sym = VGGSymbol(n);
  } else if (net_name == "lenet") {
    mxnet_sym = LenetSymbol(n);
  } else if (net_name == "alexnet") {
    mxnet_sym = AlexnetSymbol(n);
  } else if (net_name == "googlenet") {
    mxnet_sym = GoogleNetSymbol(n);
  } else {
    mxnet_sym = ResNetSymbol(n);
  }
  setOptimizer(n, b);
}


void ImageTrain::loadModel(char * model_path) {
  mxnet_sym = Symbol::Load(std::string(model_path));
  is_built = true;
}

const char * ImageTrain::toJson() {
  std::string tmp = mxnet_sym.ToJSON();
  return tmp.c_str();
}

void ImageTrain::saveModel(char * model_path) {
  if (!is_built) {
    std::cerr << "Network not built!" << std::endl;
  } else {
    mxnet_sym.Save(std::string(model_path));
  }
}

const double C=3;

void ImageTrain::loadParam(char * param_path) {
  NDArray::WaitAll();
  std::map<std::string, NDArray> parameters;
args_map.clear();
aux_map.clear();
  NDArray::Load(std::string(param_path), nullptr, &parameters);

  // only restored named symbols (both aux and arg)
  for (const auto &k : parameters) {
    if (k.first.substr(0, 4).compare("arg:")==0) {
      auto name = k.first.substr(4, k.first.size() - 4);
      args_map[name] = k.second.Copy(ctx_dev);
    }
    if (k.first.substr(0, 4).compare("aux:")==0) {
      auto name = k.first.substr(4, k.first.size() - 4);
      aux_map[name] = k.second.Copy(ctx_dev);

      std::vector<mx_float> vals(k.second.Size());
      MXNDArraySyncCopyToCPU(k.second.GetHandle(), &vals[0], vals.size());

      // this passes!
      for (size_t j=0;j<vals.size();++j) {
        if (vals[j]!=C) {
          std::cerr << "load mismatch: pos " << j << ": " << vals[j] << " != " << C << std::endl;
        }
      }
    }
  }
  
/*
  mxnet_sym.InferArgsMap(ctx_dev, &args_map, args_map);
  exec = std::unique_ptr<Executor>(mxnet_sym.SimpleBind(ctx_dev, args_map));
  args_map = exec->arg_dict();
  aux_map = exec->aux_dict();
*/

  NDArray::WaitAll();
}

static int count=0;
void ImageTrain::saveParam(char * param_path) {
  NDArray::WaitAll();
  args_map = exec->arg_dict();
  std::vector<NDArrayHandle> args;
  std::vector<std::string> keys;
  for (const auto &t : args_map) {
    if (t.first.compare("data")==0 || t.first.compare("softmax_label")==0)
      continue;
    args.push_back(t.second.GetHandle());
    keys.push_back("arg:" + t.first);
  }
  NDArray::WaitAll();
  aux_map = exec->aux_dict();
  for (const auto &t : aux_map) {
    if (t.first.compare("data")==0 || t.first.compare("softmax_label")==0)
      continue;

    std::vector<mx_float> vals(t.second.Size());
    MXNDArraySyncCopyToCPU(t.second.GetHandle(), &vals[0], vals.size());
    long sum=0;
    // second save: check that we are saving the correct values
    if(count>0)
    for (size_t j=0;j<vals.size();++j) {
      if (vals[j]!=C) {
        sum++;
        // this fails!
        std::cerr << "save mismatch: pos " << j << ": " << vals[j] << " != " << C << std::endl;
      }
    }
    if (sum>0) std::cerr << "mismatch for aux " << t.first << std::endl;

    // first save: hardcode the aux values
    if (count==0) (NDArray)t.second=C;

    args.push_back(t.second.GetHandle());
    keys.push_back("aux:" + t.first);
  }
  NDArray::WaitAll();

  const char * c_keys[args.size()];
  for (size_t i = 0; i < args.size(); i++) {
    c_keys[i] = keys[i].c_str(); //these stay valid since keys[i] won't be modified or destroyed
  }
  count++;

  NDArray::WaitAll();
  CHECK_EQ(MXNDArraySave(param_path, args.size(), args.data(), c_keys), 0);
  NDArray::WaitAll();
}

std::vector<float> ImageTrain::train(float * data, float * label) {
  return execute(data, label, true);
}

std::vector<float> ImageTrain::predict(float * data, float * label) {
  std::cout << "This has been deprecated." << std::endl;
  return execute(data, label, false);
}

std::vector<float> ImageTrain::predict(float * data) {
  return execute(data, NULL, false);
}

std::vector<float> ImageTrain::execute(float * data, float * label, bool is_train) {
  if (!is_built) {
    std::cerr << "Network hasn't been built. "
        << "Please run buildNet() or loadModel() first." << std::endl;
    exit(0);
  }

  NDArray data_n = NDArray(data, Shape(batch_size, channels, width, height), ctx_dev);
  data_n.CopyTo(&args_map["data"]);

  if (is_train) {
    NDArray label_n = NDArray(label, Shape(batch_size), ctx_dev);
    label_n.CopyTo(&args_map["softmax_label"]);
  }

  NDArray::WaitAll();

  exec->Forward(is_train);
  // train or predict?
  if (is_train) {
    exec->Backward();
    exec->UpdateAll(opt.get(), learning_rate, weight_decay);
  }

  NDArray::WaitAll();

  // get probs for prediction
  exec->outputs[0].SyncCopyToCPU(&preds, batch_size * num_classes);

  return preds;
}
