
`
input/x-inputPlaceholder*
dtype0*
shape: *(
_output_shapes
:����������
_
input/y-inputPlaceholder*
dtype0*
shape: *'
_output_shapes
:���������

t
input_reshape/Reshape/shapeConst*
dtype0*%
valueB"����         *
_output_shapes
:
�
input_reshape/ReshapeReshapeinput/x-inputinput_reshape/Reshape/shape*
T0*/
_output_shapes
:���������
d
input_reshape/ImageSummary/tagConst*
dtype0*
valueB Binput*
_output_shapes
: 
�
input_reshape/ImageSummaryImageSummaryinput_reshape/ImageSummary/taginput_reshape/Reshape*
	bad_colorB:�  �*

max_images
*
T0*
_output_shapes
: 
v
%layer1/weights/truncated_normal/shapeConst*
dtype0*
valueB"  �  *
_output_shapes
:
i
$layer1/weights/truncated_normal/meanConst*
dtype0*
valueB
 *    *
_output_shapes
: 
k
&layer1/weights/truncated_normal/stddevConst*
dtype0*
valueB
 *���=*
_output_shapes
: 
�
/layer1/weights/truncated_normal/TruncatedNormalTruncatedNormal%layer1/weights/truncated_normal/shape*
dtype0*
seed2 *

seed *
T0* 
_output_shapes
:
��
�
#layer1/weights/truncated_normal/mulMul/layer1/weights/truncated_normal/TruncatedNormal&layer1/weights/truncated_normal/stddev*
T0* 
_output_shapes
:
��
�
layer1/weights/truncated_normalAdd#layer1/weights/truncated_normal/mul$layer1/weights/truncated_normal/mean*
T0* 
_output_shapes
:
��
�
layer1/weights/VariableVariable*
dtype0*
shape:
��*
	container *
shared_name * 
_output_shapes
:
��
�
layer1/weights/Variable/AssignAssignlayer1/weights/Variablelayer1/weights/truncated_normal*
validate_shape(**
_class 
loc:@layer1/weights/Variable*
use_locking(*
T0* 
_output_shapes
:
��
�
layer1/weights/Variable/readIdentitylayer1/weights/Variable**
_class 
loc:@layer1/weights/Variable*
T0* 
_output_shapes
:
��
d
layer1/weights/summaries/RankRanklayer1/weights/Variable/read*
T0*
_output_shapes
: 
f
$layer1/weights/summaries/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
f
$layer1/weights/summaries/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
�
layer1/weights/summaries/rangeRange$layer1/weights/summaries/range/startlayer1/weights/summaries/Rank$layer1/weights/summaries/range/delta*
_output_shapes
:
�
layer1/weights/summaries/MeanMeanlayer1/weights/Variable/readlayer1/weights/summaries/range*
T0*
	keep_dims( *
_output_shapes
: 

+layer1/weights/summaries/ScalarSummary/tagsConst*
dtype0*$
valueB Bmean/layer1/weights*
_output_shapes
: 
�
&layer1/weights/summaries/ScalarSummaryScalarSummary+layer1/weights/summaries/ScalarSummary/tagslayer1/weights/summaries/Mean*
T0*
_output_shapes
: 
�
#layer1/weights/summaries/stddev/subSublayer1/weights/Variable/readlayer1/weights/summaries/Mean*
T0* 
_output_shapes
:
��
�
&layer1/weights/summaries/stddev/SquareSquare#layer1/weights/summaries/stddev/sub*
T0* 
_output_shapes
:
��
u
$layer1/weights/summaries/stddev/RankRank&layer1/weights/summaries/stddev/Square*
T0*
_output_shapes
: 
m
+layer1/weights/summaries/stddev/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
m
+layer1/weights/summaries/stddev/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
�
%layer1/weights/summaries/stddev/rangeRange+layer1/weights/summaries/stddev/range/start$layer1/weights/summaries/stddev/Rank+layer1/weights/summaries/stddev/range/delta*
_output_shapes
:
�
#layer1/weights/summaries/stddev/SumSum&layer1/weights/summaries/stddev/Square%layer1/weights/summaries/stddev/range*
T0*
	keep_dims( *
_output_shapes
: 
r
$layer1/weights/summaries/stddev/SqrtSqrt#layer1/weights/summaries/stddev/Sum*
T0*
_output_shapes
: 
�
-layer1/weights/summaries/ScalarSummary_1/tagsConst*
dtype0*&
valueB Bsttdev/layer1/weights*
_output_shapes
: 
�
(layer1/weights/summaries/ScalarSummary_1ScalarSummary-layer1/weights/summaries/ScalarSummary_1/tags$layer1/weights/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
f
layer1/weights/summaries/Rank_1Ranklayer1/weights/Variable/read*
T0*
_output_shapes
: 
h
&layer1/weights/summaries/range_1/startConst*
dtype0*
value	B : *
_output_shapes
: 
h
&layer1/weights/summaries/range_1/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
�
 layer1/weights/summaries/range_1Range&layer1/weights/summaries/range_1/startlayer1/weights/summaries/Rank_1&layer1/weights/summaries/range_1/delta*
_output_shapes
:
�
layer1/weights/summaries/MaxMaxlayer1/weights/Variable/read layer1/weights/summaries/range_1*
T0*
	keep_dims( *
_output_shapes
: 
�
-layer1/weights/summaries/ScalarSummary_2/tagsConst*
dtype0*#
valueB Bmax/layer1/weights*
_output_shapes
: 
�
(layer1/weights/summaries/ScalarSummary_2ScalarSummary-layer1/weights/summaries/ScalarSummary_2/tagslayer1/weights/summaries/Max*
T0*
_output_shapes
: 
f
layer1/weights/summaries/Rank_2Ranklayer1/weights/Variable/read*
T0*
_output_shapes
: 
h
&layer1/weights/summaries/range_2/startConst*
dtype0*
value	B : *
_output_shapes
: 
h
&layer1/weights/summaries/range_2/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
�
 layer1/weights/summaries/range_2Range&layer1/weights/summaries/range_2/startlayer1/weights/summaries/Rank_2&layer1/weights/summaries/range_2/delta*
_output_shapes
:
�
layer1/weights/summaries/MinMinlayer1/weights/Variable/read layer1/weights/summaries/range_2*
T0*
	keep_dims( *
_output_shapes
: 
�
-layer1/weights/summaries/ScalarSummary_3/tagsConst*
dtype0*#
valueB Bmin/layer1/weights*
_output_shapes
: 
�
(layer1/weights/summaries/ScalarSummary_3ScalarSummary-layer1/weights/summaries/ScalarSummary_3/tagslayer1/weights/summaries/Min*
T0*
_output_shapes
: 
|
-layer1/weights/summaries/HistogramSummary/tagConst*
dtype0*
valueB Blayer1/weights*
_output_shapes
: 
�
)layer1/weights/summaries/HistogramSummaryHistogramSummary-layer1/weights/summaries/HistogramSummary/taglayer1/weights/Variable/read*
T0*
_output_shapes
: 
b
layer1/biases/ConstConst*
dtype0*
valueB�*���=*
_output_shapes	
:�
�
layer1/biases/VariableVariable*
dtype0*
shape:�*
	container *
shared_name *
_output_shapes	
:�
�
layer1/biases/Variable/AssignAssignlayer1/biases/Variablelayer1/biases/Const*
validate_shape(*)
_class
loc:@layer1/biases/Variable*
use_locking(*
T0*
_output_shapes	
:�
�
layer1/biases/Variable/readIdentitylayer1/biases/Variable*)
_class
loc:@layer1/biases/Variable*
T0*
_output_shapes	
:�
b
layer1/biases/summaries/RankRanklayer1/biases/Variable/read*
T0*
_output_shapes
: 
e
#layer1/biases/summaries/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
e
#layer1/biases/summaries/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
�
layer1/biases/summaries/rangeRange#layer1/biases/summaries/range/startlayer1/biases/summaries/Rank#layer1/biases/summaries/range/delta*
_output_shapes
:
�
layer1/biases/summaries/MeanMeanlayer1/biases/Variable/readlayer1/biases/summaries/range*
T0*
	keep_dims( *
_output_shapes
: 
}
*layer1/biases/summaries/ScalarSummary/tagsConst*
dtype0*#
valueB Bmean/layer1/biases*
_output_shapes
: 
�
%layer1/biases/summaries/ScalarSummaryScalarSummary*layer1/biases/summaries/ScalarSummary/tagslayer1/biases/summaries/Mean*
T0*
_output_shapes
: 
�
"layer1/biases/summaries/stddev/subSublayer1/biases/Variable/readlayer1/biases/summaries/Mean*
T0*
_output_shapes	
:�
y
%layer1/biases/summaries/stddev/SquareSquare"layer1/biases/summaries/stddev/sub*
T0*
_output_shapes	
:�
s
#layer1/biases/summaries/stddev/RankRank%layer1/biases/summaries/stddev/Square*
T0*
_output_shapes
: 
l
*layer1/biases/summaries/stddev/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
l
*layer1/biases/summaries/stddev/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
�
$layer1/biases/summaries/stddev/rangeRange*layer1/biases/summaries/stddev/range/start#layer1/biases/summaries/stddev/Rank*layer1/biases/summaries/stddev/range/delta*
_output_shapes
:
�
"layer1/biases/summaries/stddev/SumSum%layer1/biases/summaries/stddev/Square$layer1/biases/summaries/stddev/range*
T0*
	keep_dims( *
_output_shapes
: 
p
#layer1/biases/summaries/stddev/SqrtSqrt"layer1/biases/summaries/stddev/Sum*
T0*
_output_shapes
: 
�
,layer1/biases/summaries/ScalarSummary_1/tagsConst*
dtype0*%
valueB Bsttdev/layer1/biases*
_output_shapes
: 
�
'layer1/biases/summaries/ScalarSummary_1ScalarSummary,layer1/biases/summaries/ScalarSummary_1/tags#layer1/biases/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
d
layer1/biases/summaries/Rank_1Ranklayer1/biases/Variable/read*
T0*
_output_shapes
: 
g
%layer1/biases/summaries/range_1/startConst*
dtype0*
value	B : *
_output_shapes
: 
g
%layer1/biases/summaries/range_1/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
�
layer1/biases/summaries/range_1Range%layer1/biases/summaries/range_1/startlayer1/biases/summaries/Rank_1%layer1/biases/summaries/range_1/delta*
_output_shapes
:
�
layer1/biases/summaries/MaxMaxlayer1/biases/Variable/readlayer1/biases/summaries/range_1*
T0*
	keep_dims( *
_output_shapes
: 
~
,layer1/biases/summaries/ScalarSummary_2/tagsConst*
dtype0*"
valueB Bmax/layer1/biases*
_output_shapes
: 
�
'layer1/biases/summaries/ScalarSummary_2ScalarSummary,layer1/biases/summaries/ScalarSummary_2/tagslayer1/biases/summaries/Max*
T0*
_output_shapes
: 
d
layer1/biases/summaries/Rank_2Ranklayer1/biases/Variable/read*
T0*
_output_shapes
: 
g
%layer1/biases/summaries/range_2/startConst*
dtype0*
value	B : *
_output_shapes
: 
g
%layer1/biases/summaries/range_2/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
�
layer1/biases/summaries/range_2Range%layer1/biases/summaries/range_2/startlayer1/biases/summaries/Rank_2%layer1/biases/summaries/range_2/delta*
_output_shapes
:
�
layer1/biases/summaries/MinMinlayer1/biases/Variable/readlayer1/biases/summaries/range_2*
T0*
	keep_dims( *
_output_shapes
: 
~
,layer1/biases/summaries/ScalarSummary_3/tagsConst*
dtype0*"
valueB Bmin/layer1/biases*
_output_shapes
: 
�
'layer1/biases/summaries/ScalarSummary_3ScalarSummary,layer1/biases/summaries/ScalarSummary_3/tagslayer1/biases/summaries/Min*
T0*
_output_shapes
: 
z
,layer1/biases/summaries/HistogramSummary/tagConst*
dtype0*
valueB Blayer1/biases*
_output_shapes
: 
�
(layer1/biases/summaries/HistogramSummaryHistogramSummary,layer1/biases/summaries/HistogramSummary/taglayer1/biases/Variable/read*
T0*
_output_shapes
: 
�
layer1/Wx_plus_b/MatMulMatMulinput/x-inputlayer1/weights/Variable/read*
transpose_b( *
transpose_a( *
T0*(
_output_shapes
:����������
�
layer1/Wx_plus_b/addAddlayer1/Wx_plus_b/MatMullayer1/biases/Variable/read*
T0*(
_output_shapes
:����������
|
%layer1/Wx_plus_b/HistogramSummary/tagConst*
dtype0*'
valueB Blayer1/pre_activations*
_output_shapes
: 
�
!layer1/Wx_plus_b/HistogramSummaryHistogramSummary%layer1/Wx_plus_b/HistogramSummary/taglayer1/Wx_plus_b/add*
T0*
_output_shapes
: 
b
layer1/activationRelulayer1/Wx_plus_b/add*
T0*(
_output_shapes
:����������
n
layer1/HistogramSummary/tagConst*
dtype0*#
valueB Blayer1/activations*
_output_shapes
: 
|
layer1/HistogramSummaryHistogramSummarylayer1/HistogramSummary/taglayer1/activation*
T0*
_output_shapes
: 
V
dropout/PlaceholderPlaceholder*
dtype0*
shape: *
_output_shapes
:
s
dropout/ScalarSummary/tagsConst*
dtype0*)
value B Bdropout_keep_probability*
_output_shapes
: 
x
dropout/ScalarSummaryScalarSummarydropout/ScalarSummary/tagsdropout/Placeholder*
T0*
_output_shapes
: 
V
dropout/dropout/ShapeShapelayer1/activation*
T0*
_output_shapes
:
g
"dropout/dropout/random_uniform/minConst*
dtype0*
valueB
 *    *
_output_shapes
: 
g
"dropout/dropout/random_uniform/maxConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape*
dtype0*
seed2 *

seed *
T0*0
_output_shapes
:������������������
�
"dropout/dropout/random_uniform/subSub"dropout/dropout/random_uniform/max"dropout/dropout/random_uniform/min*
T0*
_output_shapes
: 
�
"dropout/dropout/random_uniform/mulMul,dropout/dropout/random_uniform/RandomUniform"dropout/dropout/random_uniform/sub*
T0*0
_output_shapes
:������������������
�
dropout/dropout/random_uniformAdd"dropout/dropout/random_uniform/mul"dropout/dropout/random_uniform/min*
T0*0
_output_shapes
:������������������
r
dropout/dropout/addAdddropout/Placeholderdropout/dropout/random_uniform*
T0*
_output_shapes
:
V
dropout/dropout/FloorFloordropout/dropout/add*
T0*
_output_shapes
:
R
dropout/dropout/InvInvdropout/Placeholder*
T0*
_output_shapes
:
e
dropout/dropout/mulMullayer1/activationdropout/dropout/Inv*
T0*
_output_shapes
:
{
dropout/dropout/mul_1Muldropout/dropout/muldropout/dropout/Floor*
T0*(
_output_shapes
:����������
v
%layer2/weights/truncated_normal/shapeConst*
dtype0*
valueB"�  
   *
_output_shapes
:
i
$layer2/weights/truncated_normal/meanConst*
dtype0*
valueB
 *    *
_output_shapes
: 
k
&layer2/weights/truncated_normal/stddevConst*
dtype0*
valueB
 *���=*
_output_shapes
: 
�
/layer2/weights/truncated_normal/TruncatedNormalTruncatedNormal%layer2/weights/truncated_normal/shape*
dtype0*
seed2 *

seed *
T0*
_output_shapes
:	�

�
#layer2/weights/truncated_normal/mulMul/layer2/weights/truncated_normal/TruncatedNormal&layer2/weights/truncated_normal/stddev*
T0*
_output_shapes
:	�

�
layer2/weights/truncated_normalAdd#layer2/weights/truncated_normal/mul$layer2/weights/truncated_normal/mean*
T0*
_output_shapes
:	�

�
layer2/weights/VariableVariable*
dtype0*
shape:	�
*
	container *
shared_name *
_output_shapes
:	�

�
layer2/weights/Variable/AssignAssignlayer2/weights/Variablelayer2/weights/truncated_normal*
validate_shape(**
_class 
loc:@layer2/weights/Variable*
use_locking(*
T0*
_output_shapes
:	�

�
layer2/weights/Variable/readIdentitylayer2/weights/Variable**
_class 
loc:@layer2/weights/Variable*
T0*
_output_shapes
:	�

d
layer2/weights/summaries/RankRanklayer2/weights/Variable/read*
T0*
_output_shapes
: 
f
$layer2/weights/summaries/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
f
$layer2/weights/summaries/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
�
layer2/weights/summaries/rangeRange$layer2/weights/summaries/range/startlayer2/weights/summaries/Rank$layer2/weights/summaries/range/delta*
_output_shapes
:
�
layer2/weights/summaries/MeanMeanlayer2/weights/Variable/readlayer2/weights/summaries/range*
T0*
	keep_dims( *
_output_shapes
: 

+layer2/weights/summaries/ScalarSummary/tagsConst*
dtype0*$
valueB Bmean/layer2/weights*
_output_shapes
: 
�
&layer2/weights/summaries/ScalarSummaryScalarSummary+layer2/weights/summaries/ScalarSummary/tagslayer2/weights/summaries/Mean*
T0*
_output_shapes
: 
�
#layer2/weights/summaries/stddev/subSublayer2/weights/Variable/readlayer2/weights/summaries/Mean*
T0*
_output_shapes
:	�


&layer2/weights/summaries/stddev/SquareSquare#layer2/weights/summaries/stddev/sub*
T0*
_output_shapes
:	�

u
$layer2/weights/summaries/stddev/RankRank&layer2/weights/summaries/stddev/Square*
T0*
_output_shapes
: 
m
+layer2/weights/summaries/stddev/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
m
+layer2/weights/summaries/stddev/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
�
%layer2/weights/summaries/stddev/rangeRange+layer2/weights/summaries/stddev/range/start$layer2/weights/summaries/stddev/Rank+layer2/weights/summaries/stddev/range/delta*
_output_shapes
:
�
#layer2/weights/summaries/stddev/SumSum&layer2/weights/summaries/stddev/Square%layer2/weights/summaries/stddev/range*
T0*
	keep_dims( *
_output_shapes
: 
r
$layer2/weights/summaries/stddev/SqrtSqrt#layer2/weights/summaries/stddev/Sum*
T0*
_output_shapes
: 
�
-layer2/weights/summaries/ScalarSummary_1/tagsConst*
dtype0*&
valueB Bsttdev/layer2/weights*
_output_shapes
: 
�
(layer2/weights/summaries/ScalarSummary_1ScalarSummary-layer2/weights/summaries/ScalarSummary_1/tags$layer2/weights/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
f
layer2/weights/summaries/Rank_1Ranklayer2/weights/Variable/read*
T0*
_output_shapes
: 
h
&layer2/weights/summaries/range_1/startConst*
dtype0*
value	B : *
_output_shapes
: 
h
&layer2/weights/summaries/range_1/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
�
 layer2/weights/summaries/range_1Range&layer2/weights/summaries/range_1/startlayer2/weights/summaries/Rank_1&layer2/weights/summaries/range_1/delta*
_output_shapes
:
�
layer2/weights/summaries/MaxMaxlayer2/weights/Variable/read layer2/weights/summaries/range_1*
T0*
	keep_dims( *
_output_shapes
: 
�
-layer2/weights/summaries/ScalarSummary_2/tagsConst*
dtype0*#
valueB Bmax/layer2/weights*
_output_shapes
: 
�
(layer2/weights/summaries/ScalarSummary_2ScalarSummary-layer2/weights/summaries/ScalarSummary_2/tagslayer2/weights/summaries/Max*
T0*
_output_shapes
: 
f
layer2/weights/summaries/Rank_2Ranklayer2/weights/Variable/read*
T0*
_output_shapes
: 
h
&layer2/weights/summaries/range_2/startConst*
dtype0*
value	B : *
_output_shapes
: 
h
&layer2/weights/summaries/range_2/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
�
 layer2/weights/summaries/range_2Range&layer2/weights/summaries/range_2/startlayer2/weights/summaries/Rank_2&layer2/weights/summaries/range_2/delta*
_output_shapes
:
�
layer2/weights/summaries/MinMinlayer2/weights/Variable/read layer2/weights/summaries/range_2*
T0*
	keep_dims( *
_output_shapes
: 
�
-layer2/weights/summaries/ScalarSummary_3/tagsConst*
dtype0*#
valueB Bmin/layer2/weights*
_output_shapes
: 
�
(layer2/weights/summaries/ScalarSummary_3ScalarSummary-layer2/weights/summaries/ScalarSummary_3/tagslayer2/weights/summaries/Min*
T0*
_output_shapes
: 
|
-layer2/weights/summaries/HistogramSummary/tagConst*
dtype0*
valueB Blayer2/weights*
_output_shapes
: 
�
)layer2/weights/summaries/HistogramSummaryHistogramSummary-layer2/weights/summaries/HistogramSummary/taglayer2/weights/Variable/read*
T0*
_output_shapes
: 
`
layer2/biases/ConstConst*
dtype0*
valueB
*���=*
_output_shapes
:

�
layer2/biases/VariableVariable*
dtype0*
shape:
*
	container *
shared_name *
_output_shapes
:

�
layer2/biases/Variable/AssignAssignlayer2/biases/Variablelayer2/biases/Const*
validate_shape(*)
_class
loc:@layer2/biases/Variable*
use_locking(*
T0*
_output_shapes
:

�
layer2/biases/Variable/readIdentitylayer2/biases/Variable*)
_class
loc:@layer2/biases/Variable*
T0*
_output_shapes
:

b
layer2/biases/summaries/RankRanklayer2/biases/Variable/read*
T0*
_output_shapes
: 
e
#layer2/biases/summaries/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
e
#layer2/biases/summaries/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
�
layer2/biases/summaries/rangeRange#layer2/biases/summaries/range/startlayer2/biases/summaries/Rank#layer2/biases/summaries/range/delta*
_output_shapes
:
�
layer2/biases/summaries/MeanMeanlayer2/biases/Variable/readlayer2/biases/summaries/range*
T0*
	keep_dims( *
_output_shapes
: 
}
*layer2/biases/summaries/ScalarSummary/tagsConst*
dtype0*#
valueB Bmean/layer2/biases*
_output_shapes
: 
�
%layer2/biases/summaries/ScalarSummaryScalarSummary*layer2/biases/summaries/ScalarSummary/tagslayer2/biases/summaries/Mean*
T0*
_output_shapes
: 
�
"layer2/biases/summaries/stddev/subSublayer2/biases/Variable/readlayer2/biases/summaries/Mean*
T0*
_output_shapes
:

x
%layer2/biases/summaries/stddev/SquareSquare"layer2/biases/summaries/stddev/sub*
T0*
_output_shapes
:

s
#layer2/biases/summaries/stddev/RankRank%layer2/biases/summaries/stddev/Square*
T0*
_output_shapes
: 
l
*layer2/biases/summaries/stddev/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
l
*layer2/biases/summaries/stddev/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
�
$layer2/biases/summaries/stddev/rangeRange*layer2/biases/summaries/stddev/range/start#layer2/biases/summaries/stddev/Rank*layer2/biases/summaries/stddev/range/delta*
_output_shapes
:
�
"layer2/biases/summaries/stddev/SumSum%layer2/biases/summaries/stddev/Square$layer2/biases/summaries/stddev/range*
T0*
	keep_dims( *
_output_shapes
: 
p
#layer2/biases/summaries/stddev/SqrtSqrt"layer2/biases/summaries/stddev/Sum*
T0*
_output_shapes
: 
�
,layer2/biases/summaries/ScalarSummary_1/tagsConst*
dtype0*%
valueB Bsttdev/layer2/biases*
_output_shapes
: 
�
'layer2/biases/summaries/ScalarSummary_1ScalarSummary,layer2/biases/summaries/ScalarSummary_1/tags#layer2/biases/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
d
layer2/biases/summaries/Rank_1Ranklayer2/biases/Variable/read*
T0*
_output_shapes
: 
g
%layer2/biases/summaries/range_1/startConst*
dtype0*
value	B : *
_output_shapes
: 
g
%layer2/biases/summaries/range_1/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
�
layer2/biases/summaries/range_1Range%layer2/biases/summaries/range_1/startlayer2/biases/summaries/Rank_1%layer2/biases/summaries/range_1/delta*
_output_shapes
:
�
layer2/biases/summaries/MaxMaxlayer2/biases/Variable/readlayer2/biases/summaries/range_1*
T0*
	keep_dims( *
_output_shapes
: 
~
,layer2/biases/summaries/ScalarSummary_2/tagsConst*
dtype0*"
valueB Bmax/layer2/biases*
_output_shapes
: 
�
'layer2/biases/summaries/ScalarSummary_2ScalarSummary,layer2/biases/summaries/ScalarSummary_2/tagslayer2/biases/summaries/Max*
T0*
_output_shapes
: 
d
layer2/biases/summaries/Rank_2Ranklayer2/biases/Variable/read*
T0*
_output_shapes
: 
g
%layer2/biases/summaries/range_2/startConst*
dtype0*
value	B : *
_output_shapes
: 
g
%layer2/biases/summaries/range_2/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
�
layer2/biases/summaries/range_2Range%layer2/biases/summaries/range_2/startlayer2/biases/summaries/Rank_2%layer2/biases/summaries/range_2/delta*
_output_shapes
:
�
layer2/biases/summaries/MinMinlayer2/biases/Variable/readlayer2/biases/summaries/range_2*
T0*
	keep_dims( *
_output_shapes
: 
~
,layer2/biases/summaries/ScalarSummary_3/tagsConst*
dtype0*"
valueB Bmin/layer2/biases*
_output_shapes
: 
�
'layer2/biases/summaries/ScalarSummary_3ScalarSummary,layer2/biases/summaries/ScalarSummary_3/tagslayer2/biases/summaries/Min*
T0*
_output_shapes
: 
z
,layer2/biases/summaries/HistogramSummary/tagConst*
dtype0*
valueB Blayer2/biases*
_output_shapes
: 
�
(layer2/biases/summaries/HistogramSummaryHistogramSummary,layer2/biases/summaries/HistogramSummary/taglayer2/biases/Variable/read*
T0*
_output_shapes
: 
�
layer2/Wx_plus_b/MatMulMatMuldropout/dropout/mul_1layer2/weights/Variable/read*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:���������

�
layer2/Wx_plus_b/addAddlayer2/Wx_plus_b/MatMullayer2/biases/Variable/read*
T0*'
_output_shapes
:���������

|
%layer2/Wx_plus_b/HistogramSummary/tagConst*
dtype0*'
valueB Blayer2/pre_activations*
_output_shapes
: 
�
!layer2/Wx_plus_b/HistogramSummaryHistogramSummary%layer2/Wx_plus_b/HistogramSummary/taglayer2/Wx_plus_b/add*
T0*
_output_shapes
: 
d
layer2/activationSoftmaxlayer2/Wx_plus_b/add*
T0*'
_output_shapes
:���������

n
layer2/HistogramSummary/tagConst*
dtype0*#
valueB Blayer2/activations*
_output_shapes
: 
|
layer2/HistogramSummaryHistogramSummarylayer2/HistogramSummary/taglayer2/activation*
T0*
_output_shapes
: 
]
cross_entropy/LogLoglayer2/activation*
T0*'
_output_shapes
:���������

l
cross_entropy/mulMulinput/y-inputcross_entropy/Log*
T0*'
_output_shapes
:���������

T
cross_entropy/total/RankRankcross_entropy/mul*
T0*
_output_shapes
: 
a
cross_entropy/total/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
a
cross_entropy/total/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
�
cross_entropy/total/rangeRangecross_entropy/total/range/startcross_entropy/total/Rankcross_entropy/total/range/delta*
_output_shapes
:
�
cross_entropy/total/MeanMeancross_entropy/mulcross_entropy/total/range*
T0*
	keep_dims( *
_output_shapes
: 
Y
cross_entropy/total/NegNegcross_entropy/total/Mean*
T0*
_output_shapes
: 
n
 cross_entropy/ScalarSummary/tagsConst*
dtype0*
valueB Bcross entropy*
_output_shapes
: 
�
cross_entropy/ScalarSummaryScalarSummary cross_entropy/ScalarSummary/tagscross_entropy/total/Neg*
T0*
_output_shapes
: 
Z
train/gradients/ShapeShapecross_entropy/total/Neg*
T0*
_output_shapes
: 
Z
train/gradients/ConstConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
k
train/gradients/FillFilltrain/gradients/Shapetrain/gradients/Const*
T0*
_output_shapes
: 
n
0train/gradients/cross_entropy/total/Neg_grad/NegNegtrain/gradients/Fill*
T0*
_output_shapes
: 
t
3train/gradients/cross_entropy/total/Mean_grad/ShapeShapecross_entropy/mul*
T0*
_output_shapes
:
�
2train/gradients/cross_entropy/total/Mean_grad/SizeSize3train/gradients/cross_entropy/total/Mean_grad/Shape*
T0*
_output_shapes
: 
�
1train/gradients/cross_entropy/total/Mean_grad/addAddcross_entropy/total/range2train/gradients/cross_entropy/total/Mean_grad/Size*
T0*
_output_shapes
:
�
1train/gradients/cross_entropy/total/Mean_grad/modMod1train/gradients/cross_entropy/total/Mean_grad/add2train/gradients/cross_entropy/total/Mean_grad/Size*
T0*
_output_shapes
:
�
5train/gradients/cross_entropy/total/Mean_grad/Shape_1Shape1train/gradients/cross_entropy/total/Mean_grad/mod*
T0*
_output_shapes
:
{
9train/gradients/cross_entropy/total/Mean_grad/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
{
9train/gradients/cross_entropy/total/Mean_grad/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
�
3train/gradients/cross_entropy/total/Mean_grad/rangeRange9train/gradients/cross_entropy/total/Mean_grad/range/start2train/gradients/cross_entropy/total/Mean_grad/Size9train/gradients/cross_entropy/total/Mean_grad/range/delta*
_output_shapes
:
z
8train/gradients/cross_entropy/total/Mean_grad/Fill/valueConst*
dtype0*
value	B :*
_output_shapes
: 
�
2train/gradients/cross_entropy/total/Mean_grad/FillFill5train/gradients/cross_entropy/total/Mean_grad/Shape_18train/gradients/cross_entropy/total/Mean_grad/Fill/value*
T0*
_output_shapes
:
�
;train/gradients/cross_entropy/total/Mean_grad/DynamicStitchDynamicStitch3train/gradients/cross_entropy/total/Mean_grad/range1train/gradients/cross_entropy/total/Mean_grad/mod3train/gradients/cross_entropy/total/Mean_grad/Shape2train/gradients/cross_entropy/total/Mean_grad/Fill*#
_output_shapes
:���������*
T0*
N
y
7train/gradients/cross_entropy/total/Mean_grad/Maximum/yConst*
dtype0*
value	B :*
_output_shapes
: 
�
5train/gradients/cross_entropy/total/Mean_grad/MaximumMaximum;train/gradients/cross_entropy/total/Mean_grad/DynamicStitch7train/gradients/cross_entropy/total/Mean_grad/Maximum/y*
T0*#
_output_shapes
:���������
�
6train/gradients/cross_entropy/total/Mean_grad/floordivDiv3train/gradients/cross_entropy/total/Mean_grad/Shape5train/gradients/cross_entropy/total/Mean_grad/Maximum*
T0*
_output_shapes
:
�
5train/gradients/cross_entropy/total/Mean_grad/ReshapeReshape0train/gradients/cross_entropy/total/Neg_grad/Neg;train/gradients/cross_entropy/total/Mean_grad/DynamicStitch*
T0*
_output_shapes
:
�
2train/gradients/cross_entropy/total/Mean_grad/TileTile5train/gradients/cross_entropy/total/Mean_grad/Reshape6train/gradients/cross_entropy/total/Mean_grad/floordiv*
T0*0
_output_shapes
:������������������
v
5train/gradients/cross_entropy/total/Mean_grad/Shape_2Shapecross_entropy/mul*
T0*
_output_shapes
:
{
5train/gradients/cross_entropy/total/Mean_grad/Shape_3Shapecross_entropy/total/Mean*
T0*
_output_shapes
: 
�
2train/gradients/cross_entropy/total/Mean_grad/RankRank5train/gradients/cross_entropy/total/Mean_grad/Shape_2*
T0*
_output_shapes
: 
}
;train/gradients/cross_entropy/total/Mean_grad/range_1/startConst*
dtype0*
value	B : *
_output_shapes
: 
}
;train/gradients/cross_entropy/total/Mean_grad/range_1/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
�
5train/gradients/cross_entropy/total/Mean_grad/range_1Range;train/gradients/cross_entropy/total/Mean_grad/range_1/start2train/gradients/cross_entropy/total/Mean_grad/Rank;train/gradients/cross_entropy/total/Mean_grad/range_1/delta*
_output_shapes
:
�
2train/gradients/cross_entropy/total/Mean_grad/ProdProd5train/gradients/cross_entropy/total/Mean_grad/Shape_25train/gradients/cross_entropy/total/Mean_grad/range_1*
T0*
	keep_dims( *
_output_shapes
: 
�
4train/gradients/cross_entropy/total/Mean_grad/Rank_1Rank5train/gradients/cross_entropy/total/Mean_grad/Shape_3*
T0*
_output_shapes
: 
}
;train/gradients/cross_entropy/total/Mean_grad/range_2/startConst*
dtype0*
value	B : *
_output_shapes
: 
}
;train/gradients/cross_entropy/total/Mean_grad/range_2/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
�
5train/gradients/cross_entropy/total/Mean_grad/range_2Range;train/gradients/cross_entropy/total/Mean_grad/range_2/start4train/gradients/cross_entropy/total/Mean_grad/Rank_1;train/gradients/cross_entropy/total/Mean_grad/range_2/delta*
_output_shapes
:
�
4train/gradients/cross_entropy/total/Mean_grad/Prod_1Prod5train/gradients/cross_entropy/total/Mean_grad/Shape_35train/gradients/cross_entropy/total/Mean_grad/range_2*
T0*
	keep_dims( *
_output_shapes
: 
{
9train/gradients/cross_entropy/total/Mean_grad/Maximum_1/yConst*
dtype0*
value	B :*
_output_shapes
: 
�
7train/gradients/cross_entropy/total/Mean_grad/Maximum_1Maximum4train/gradients/cross_entropy/total/Mean_grad/Prod_19train/gradients/cross_entropy/total/Mean_grad/Maximum_1/y*
T0*
_output_shapes
: 
�
8train/gradients/cross_entropy/total/Mean_grad/floordiv_1Div2train/gradients/cross_entropy/total/Mean_grad/Prod7train/gradients/cross_entropy/total/Mean_grad/Maximum_1*
T0*
_output_shapes
: 
�
2train/gradients/cross_entropy/total/Mean_grad/CastCast8train/gradients/cross_entropy/total/Mean_grad/floordiv_1*

DstT0*

SrcT0*
_output_shapes
: 
�
5train/gradients/cross_entropy/total/Mean_grad/truedivDiv2train/gradients/cross_entropy/total/Mean_grad/Tile2train/gradients/cross_entropy/total/Mean_grad/Cast*
T0*'
_output_shapes
:���������

i
,train/gradients/cross_entropy/mul_grad/ShapeShapeinput/y-input*
T0*
_output_shapes
:
o
.train/gradients/cross_entropy/mul_grad/Shape_1Shapecross_entropy/Log*
T0*
_output_shapes
:
�
<train/gradients/cross_entropy/mul_grad/BroadcastGradientArgsBroadcastGradientArgs,train/gradients/cross_entropy/mul_grad/Shape.train/gradients/cross_entropy/mul_grad/Shape_1*2
_output_shapes 
:���������:���������
�
*train/gradients/cross_entropy/mul_grad/mulMul5train/gradients/cross_entropy/total/Mean_grad/truedivcross_entropy/Log*
T0*'
_output_shapes
:���������

�
*train/gradients/cross_entropy/mul_grad/SumSum*train/gradients/cross_entropy/mul_grad/mul<train/gradients/cross_entropy/mul_grad/BroadcastGradientArgs*
T0*
	keep_dims( *
_output_shapes
:
�
.train/gradients/cross_entropy/mul_grad/ReshapeReshape*train/gradients/cross_entropy/mul_grad/Sum,train/gradients/cross_entropy/mul_grad/Shape*
T0*0
_output_shapes
:������������������
�
,train/gradients/cross_entropy/mul_grad/mul_1Mulinput/y-input5train/gradients/cross_entropy/total/Mean_grad/truediv*
T0*'
_output_shapes
:���������

�
,train/gradients/cross_entropy/mul_grad/Sum_1Sum,train/gradients/cross_entropy/mul_grad/mul_1>train/gradients/cross_entropy/mul_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *
_output_shapes
:
�
0train/gradients/cross_entropy/mul_grad/Reshape_1Reshape,train/gradients/cross_entropy/mul_grad/Sum_1.train/gradients/cross_entropy/mul_grad/Shape_1*
T0*0
_output_shapes
:������������������
�
7train/gradients/cross_entropy/mul_grad/tuple/group_depsNoOp/^train/gradients/cross_entropy/mul_grad/Reshape1^train/gradients/cross_entropy/mul_grad/Reshape_1
�
?train/gradients/cross_entropy/mul_grad/tuple/control_dependencyIdentity.train/gradients/cross_entropy/mul_grad/Reshape8^train/gradients/cross_entropy/mul_grad/tuple/group_deps*A
_class7
53loc:@train/gradients/cross_entropy/mul_grad/Reshape*
T0*'
_output_shapes
:���������

�
Atrain/gradients/cross_entropy/mul_grad/tuple/control_dependency_1Identity0train/gradients/cross_entropy/mul_grad/Reshape_18^train/gradients/cross_entropy/mul_grad/tuple/group_deps*C
_class9
75loc:@train/gradients/cross_entropy/mul_grad/Reshape_1*
T0*'
_output_shapes
:���������

�
*train/gradients/cross_entropy/Log_grad/InvInvlayer2/activationB^train/gradients/cross_entropy/mul_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:���������

�
*train/gradients/cross_entropy/Log_grad/mulMulAtrain/gradients/cross_entropy/mul_grad/tuple/control_dependency_1*train/gradients/cross_entropy/Log_grad/Inv*
T0*'
_output_shapes
:���������

�
*train/gradients/layer2/activation_grad/mulMul*train/gradients/cross_entropy/Log_grad/mullayer2/activation*
T0*'
_output_shapes
:���������

�
<train/gradients/layer2/activation_grad/Sum/reduction_indicesConst*
dtype0*
valueB:*
_output_shapes
:
�
*train/gradients/layer2/activation_grad/SumSum*train/gradients/layer2/activation_grad/mul<train/gradients/layer2/activation_grad/Sum/reduction_indices*
T0*
	keep_dims( *#
_output_shapes
:���������
�
4train/gradients/layer2/activation_grad/Reshape/shapeConst*
dtype0*
valueB"����   *
_output_shapes
:
�
.train/gradients/layer2/activation_grad/ReshapeReshape*train/gradients/layer2/activation_grad/Sum4train/gradients/layer2/activation_grad/Reshape/shape*
T0*'
_output_shapes
:���������
�
*train/gradients/layer2/activation_grad/subSub*train/gradients/cross_entropy/Log_grad/mul.train/gradients/layer2/activation_grad/Reshape*
T0*'
_output_shapes
:���������

�
,train/gradients/layer2/activation_grad/mul_1Mul*train/gradients/layer2/activation_grad/sublayer2/activation*
T0*'
_output_shapes
:���������

v
/train/gradients/layer2/Wx_plus_b/add_grad/ShapeShapelayer2/Wx_plus_b/MatMul*
T0*
_output_shapes
:
|
1train/gradients/layer2/Wx_plus_b/add_grad/Shape_1Shapelayer2/biases/Variable/read*
T0*
_output_shapes
:
�
?train/gradients/layer2/Wx_plus_b/add_grad/BroadcastGradientArgsBroadcastGradientArgs/train/gradients/layer2/Wx_plus_b/add_grad/Shape1train/gradients/layer2/Wx_plus_b/add_grad/Shape_1*2
_output_shapes 
:���������:���������
�
-train/gradients/layer2/Wx_plus_b/add_grad/SumSum,train/gradients/layer2/activation_grad/mul_1?train/gradients/layer2/Wx_plus_b/add_grad/BroadcastGradientArgs*
T0*
	keep_dims( *
_output_shapes
:
�
1train/gradients/layer2/Wx_plus_b/add_grad/ReshapeReshape-train/gradients/layer2/Wx_plus_b/add_grad/Sum/train/gradients/layer2/Wx_plus_b/add_grad/Shape*
T0*0
_output_shapes
:������������������
�
/train/gradients/layer2/Wx_plus_b/add_grad/Sum_1Sum,train/gradients/layer2/activation_grad/mul_1Atrain/gradients/layer2/Wx_plus_b/add_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *
_output_shapes
:
�
3train/gradients/layer2/Wx_plus_b/add_grad/Reshape_1Reshape/train/gradients/layer2/Wx_plus_b/add_grad/Sum_11train/gradients/layer2/Wx_plus_b/add_grad/Shape_1*
T0*
_output_shapes
:

�
:train/gradients/layer2/Wx_plus_b/add_grad/tuple/group_depsNoOp2^train/gradients/layer2/Wx_plus_b/add_grad/Reshape4^train/gradients/layer2/Wx_plus_b/add_grad/Reshape_1
�
Btrain/gradients/layer2/Wx_plus_b/add_grad/tuple/control_dependencyIdentity1train/gradients/layer2/Wx_plus_b/add_grad/Reshape;^train/gradients/layer2/Wx_plus_b/add_grad/tuple/group_deps*D
_class:
86loc:@train/gradients/layer2/Wx_plus_b/add_grad/Reshape*
T0*'
_output_shapes
:���������

�
Dtrain/gradients/layer2/Wx_plus_b/add_grad/tuple/control_dependency_1Identity3train/gradients/layer2/Wx_plus_b/add_grad/Reshape_1;^train/gradients/layer2/Wx_plus_b/add_grad/tuple/group_deps*F
_class<
:8loc:@train/gradients/layer2/Wx_plus_b/add_grad/Reshape_1*
T0*
_output_shapes
:

�
3train/gradients/layer2/Wx_plus_b/MatMul_grad/MatMulMatMulBtrain/gradients/layer2/Wx_plus_b/add_grad/tuple/control_dependencylayer2/weights/Variable/read*
transpose_b(*
transpose_a( *
T0*(
_output_shapes
:����������
�
5train/gradients/layer2/Wx_plus_b/MatMul_grad/MatMul_1MatMuldropout/dropout/mul_1Btrain/gradients/layer2/Wx_plus_b/add_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0*
_output_shapes
:	�

�
=train/gradients/layer2/Wx_plus_b/MatMul_grad/tuple/group_depsNoOp4^train/gradients/layer2/Wx_plus_b/MatMul_grad/MatMul6^train/gradients/layer2/Wx_plus_b/MatMul_grad/MatMul_1
�
Etrain/gradients/layer2/Wx_plus_b/MatMul_grad/tuple/control_dependencyIdentity3train/gradients/layer2/Wx_plus_b/MatMul_grad/MatMul>^train/gradients/layer2/Wx_plus_b/MatMul_grad/tuple/group_deps*F
_class<
:8loc:@train/gradients/layer2/Wx_plus_b/MatMul_grad/MatMul*
T0*(
_output_shapes
:����������
�
Gtrain/gradients/layer2/Wx_plus_b/MatMul_grad/tuple/control_dependency_1Identity5train/gradients/layer2/Wx_plus_b/MatMul_grad/MatMul_1>^train/gradients/layer2/Wx_plus_b/MatMul_grad/tuple/group_deps*H
_class>
<:loc:@train/gradients/layer2/Wx_plus_b/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	�

|
0train/gradients/dropout/dropout/mul_1_grad/ShapeShapedropout/dropout/mul*
T0*#
_output_shapes
:���������
�
2train/gradients/dropout/dropout/mul_1_grad/Shape_1Shapedropout/dropout/Floor*
T0*#
_output_shapes
:���������
�
@train/gradients/dropout/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs0train/gradients/dropout/dropout/mul_1_grad/Shape2train/gradients/dropout/dropout/mul_1_grad/Shape_1*2
_output_shapes 
:���������:���������
�
.train/gradients/dropout/dropout/mul_1_grad/mulMulEtrain/gradients/layer2/Wx_plus_b/MatMul_grad/tuple/control_dependencydropout/dropout/Floor*
T0*
_output_shapes
:
�
.train/gradients/dropout/dropout/mul_1_grad/SumSum.train/gradients/dropout/dropout/mul_1_grad/mul@train/gradients/dropout/dropout/mul_1_grad/BroadcastGradientArgs*
T0*
	keep_dims( *
_output_shapes
:
�
2train/gradients/dropout/dropout/mul_1_grad/ReshapeReshape.train/gradients/dropout/dropout/mul_1_grad/Sum0train/gradients/dropout/dropout/mul_1_grad/Shape*
T0*
_output_shapes
:
�
0train/gradients/dropout/dropout/mul_1_grad/mul_1Muldropout/dropout/mulEtrain/gradients/layer2/Wx_plus_b/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes
:
�
0train/gradients/dropout/dropout/mul_1_grad/Sum_1Sum0train/gradients/dropout/dropout/mul_1_grad/mul_1Btrain/gradients/dropout/dropout/mul_1_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *
_output_shapes
:
�
4train/gradients/dropout/dropout/mul_1_grad/Reshape_1Reshape0train/gradients/dropout/dropout/mul_1_grad/Sum_12train/gradients/dropout/dropout/mul_1_grad/Shape_1*
T0*
_output_shapes
:
�
;train/gradients/dropout/dropout/mul_1_grad/tuple/group_depsNoOp3^train/gradients/dropout/dropout/mul_1_grad/Reshape5^train/gradients/dropout/dropout/mul_1_grad/Reshape_1
�
Ctrain/gradients/dropout/dropout/mul_1_grad/tuple/control_dependencyIdentity2train/gradients/dropout/dropout/mul_1_grad/Reshape<^train/gradients/dropout/dropout/mul_1_grad/tuple/group_deps*E
_class;
97loc:@train/gradients/dropout/dropout/mul_1_grad/Reshape*
T0*
_output_shapes
:
�
Etrain/gradients/dropout/dropout/mul_1_grad/tuple/control_dependency_1Identity4train/gradients/dropout/dropout/mul_1_grad/Reshape_1<^train/gradients/dropout/dropout/mul_1_grad/tuple/group_deps*G
_class=
;9loc:@train/gradients/dropout/dropout/mul_1_grad/Reshape_1*
T0*
_output_shapes
:
o
.train/gradients/dropout/dropout/mul_grad/ShapeShapelayer1/activation*
T0*
_output_shapes
:
|
0train/gradients/dropout/dropout/mul_grad/Shape_1Shapedropout/dropout/Inv*
T0*#
_output_shapes
:���������
�
>train/gradients/dropout/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs.train/gradients/dropout/dropout/mul_grad/Shape0train/gradients/dropout/dropout/mul_grad/Shape_1*2
_output_shapes 
:���������:���������
�
,train/gradients/dropout/dropout/mul_grad/mulMulCtrain/gradients/dropout/dropout/mul_1_grad/tuple/control_dependencydropout/dropout/Inv*
T0*
_output_shapes
:
�
,train/gradients/dropout/dropout/mul_grad/SumSum,train/gradients/dropout/dropout/mul_grad/mul>train/gradients/dropout/dropout/mul_grad/BroadcastGradientArgs*
T0*
	keep_dims( *
_output_shapes
:
�
0train/gradients/dropout/dropout/mul_grad/ReshapeReshape,train/gradients/dropout/dropout/mul_grad/Sum.train/gradients/dropout/dropout/mul_grad/Shape*
T0*0
_output_shapes
:������������������
�
.train/gradients/dropout/dropout/mul_grad/mul_1Mullayer1/activationCtrain/gradients/dropout/dropout/mul_1_grad/tuple/control_dependency*
T0*
_output_shapes
:
�
.train/gradients/dropout/dropout/mul_grad/Sum_1Sum.train/gradients/dropout/dropout/mul_grad/mul_1@train/gradients/dropout/dropout/mul_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *
_output_shapes
:
�
2train/gradients/dropout/dropout/mul_grad/Reshape_1Reshape.train/gradients/dropout/dropout/mul_grad/Sum_10train/gradients/dropout/dropout/mul_grad/Shape_1*
T0*
_output_shapes
:
�
9train/gradients/dropout/dropout/mul_grad/tuple/group_depsNoOp1^train/gradients/dropout/dropout/mul_grad/Reshape3^train/gradients/dropout/dropout/mul_grad/Reshape_1
�
Atrain/gradients/dropout/dropout/mul_grad/tuple/control_dependencyIdentity0train/gradients/dropout/dropout/mul_grad/Reshape:^train/gradients/dropout/dropout/mul_grad/tuple/group_deps*C
_class9
75loc:@train/gradients/dropout/dropout/mul_grad/Reshape*
T0*(
_output_shapes
:����������
�
Ctrain/gradients/dropout/dropout/mul_grad/tuple/control_dependency_1Identity2train/gradients/dropout/dropout/mul_grad/Reshape_1:^train/gradients/dropout/dropout/mul_grad/tuple/group_deps*E
_class;
97loc:@train/gradients/dropout/dropout/mul_grad/Reshape_1*
T0*
_output_shapes
:
�
/train/gradients/layer1/activation_grad/ReluGradReluGradAtrain/gradients/dropout/dropout/mul_grad/tuple/control_dependencylayer1/activation*
T0*(
_output_shapes
:����������
v
/train/gradients/layer1/Wx_plus_b/add_grad/ShapeShapelayer1/Wx_plus_b/MatMul*
T0*
_output_shapes
:
|
1train/gradients/layer1/Wx_plus_b/add_grad/Shape_1Shapelayer1/biases/Variable/read*
T0*
_output_shapes
:
�
?train/gradients/layer1/Wx_plus_b/add_grad/BroadcastGradientArgsBroadcastGradientArgs/train/gradients/layer1/Wx_plus_b/add_grad/Shape1train/gradients/layer1/Wx_plus_b/add_grad/Shape_1*2
_output_shapes 
:���������:���������
�
-train/gradients/layer1/Wx_plus_b/add_grad/SumSum/train/gradients/layer1/activation_grad/ReluGrad?train/gradients/layer1/Wx_plus_b/add_grad/BroadcastGradientArgs*
T0*
	keep_dims( *
_output_shapes
:
�
1train/gradients/layer1/Wx_plus_b/add_grad/ReshapeReshape-train/gradients/layer1/Wx_plus_b/add_grad/Sum/train/gradients/layer1/Wx_plus_b/add_grad/Shape*
T0*0
_output_shapes
:������������������
�
/train/gradients/layer1/Wx_plus_b/add_grad/Sum_1Sum/train/gradients/layer1/activation_grad/ReluGradAtrain/gradients/layer1/Wx_plus_b/add_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *
_output_shapes
:
�
3train/gradients/layer1/Wx_plus_b/add_grad/Reshape_1Reshape/train/gradients/layer1/Wx_plus_b/add_grad/Sum_11train/gradients/layer1/Wx_plus_b/add_grad/Shape_1*
T0*
_output_shapes	
:�
�
:train/gradients/layer1/Wx_plus_b/add_grad/tuple/group_depsNoOp2^train/gradients/layer1/Wx_plus_b/add_grad/Reshape4^train/gradients/layer1/Wx_plus_b/add_grad/Reshape_1
�
Btrain/gradients/layer1/Wx_plus_b/add_grad/tuple/control_dependencyIdentity1train/gradients/layer1/Wx_plus_b/add_grad/Reshape;^train/gradients/layer1/Wx_plus_b/add_grad/tuple/group_deps*D
_class:
86loc:@train/gradients/layer1/Wx_plus_b/add_grad/Reshape*
T0*(
_output_shapes
:����������
�
Dtrain/gradients/layer1/Wx_plus_b/add_grad/tuple/control_dependency_1Identity3train/gradients/layer1/Wx_plus_b/add_grad/Reshape_1;^train/gradients/layer1/Wx_plus_b/add_grad/tuple/group_deps*F
_class<
:8loc:@train/gradients/layer1/Wx_plus_b/add_grad/Reshape_1*
T0*
_output_shapes	
:�
�
3train/gradients/layer1/Wx_plus_b/MatMul_grad/MatMulMatMulBtrain/gradients/layer1/Wx_plus_b/add_grad/tuple/control_dependencylayer1/weights/Variable/read*
transpose_b(*
transpose_a( *
T0*(
_output_shapes
:����������
�
5train/gradients/layer1/Wx_plus_b/MatMul_grad/MatMul_1MatMulinput/x-inputBtrain/gradients/layer1/Wx_plus_b/add_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:
��
�
=train/gradients/layer1/Wx_plus_b/MatMul_grad/tuple/group_depsNoOp4^train/gradients/layer1/Wx_plus_b/MatMul_grad/MatMul6^train/gradients/layer1/Wx_plus_b/MatMul_grad/MatMul_1
�
Etrain/gradients/layer1/Wx_plus_b/MatMul_grad/tuple/control_dependencyIdentity3train/gradients/layer1/Wx_plus_b/MatMul_grad/MatMul>^train/gradients/layer1/Wx_plus_b/MatMul_grad/tuple/group_deps*F
_class<
:8loc:@train/gradients/layer1/Wx_plus_b/MatMul_grad/MatMul*
T0*(
_output_shapes
:����������
�
Gtrain/gradients/layer1/Wx_plus_b/MatMul_grad/tuple/control_dependency_1Identity5train/gradients/layer1/Wx_plus_b/MatMul_grad/MatMul_1>^train/gradients/layer1/Wx_plus_b/MatMul_grad/tuple/group_deps*H
_class>
<:loc:@train/gradients/layer1/Wx_plus_b/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
��
�
train/beta1_power/initial_valueConst*
dtype0**
_class 
loc:@layer1/weights/Variable*
valueB
 *fff?*
_output_shapes
: 
�
train/beta1_powerVariable*
	container *
_output_shapes
: *
dtype0*
shape: **
_class 
loc:@layer1/weights/Variable*
shared_name 
�
train/beta1_power/AssignAssigntrain/beta1_powertrain/beta1_power/initial_value*
validate_shape(**
_class 
loc:@layer1/weights/Variable*
use_locking(*
T0*
_output_shapes
: 
�
train/beta1_power/readIdentitytrain/beta1_power**
_class 
loc:@layer1/weights/Variable*
T0*
_output_shapes
: 
�
train/beta2_power/initial_valueConst*
dtype0**
_class 
loc:@layer1/weights/Variable*
valueB
 *w�?*
_output_shapes
: 
�
train/beta2_powerVariable*
	container *
_output_shapes
: *
dtype0*
shape: **
_class 
loc:@layer1/weights/Variable*
shared_name 
�
train/beta2_power/AssignAssigntrain/beta2_powertrain/beta2_power/initial_value*
validate_shape(**
_class 
loc:@layer1/weights/Variable*
use_locking(*
T0*
_output_shapes
: 
�
train/beta2_power/readIdentitytrain/beta2_power**
_class 
loc:@layer1/weights/Variable*
T0*
_output_shapes
: 
d
train/zerosConst*
dtype0*
valueB
��*    * 
_output_shapes
:
��
�
"train/layer1/weights/Variable/AdamVariable*
	container * 
_output_shapes
:
��*
dtype0*
shape:
��**
_class 
loc:@layer1/weights/Variable*
shared_name 
�
)train/layer1/weights/Variable/Adam/AssignAssign"train/layer1/weights/Variable/Adamtrain/zeros*
validate_shape(**
_class 
loc:@layer1/weights/Variable*
use_locking(*
T0* 
_output_shapes
:
��
�
'train/layer1/weights/Variable/Adam/readIdentity"train/layer1/weights/Variable/Adam**
_class 
loc:@layer1/weights/Variable*
T0* 
_output_shapes
:
��
f
train/zeros_1Const*
dtype0*
valueB
��*    * 
_output_shapes
:
��
�
$train/layer1/weights/Variable/Adam_1Variable*
	container * 
_output_shapes
:
��*
dtype0*
shape:
��**
_class 
loc:@layer1/weights/Variable*
shared_name 
�
+train/layer1/weights/Variable/Adam_1/AssignAssign$train/layer1/weights/Variable/Adam_1train/zeros_1*
validate_shape(**
_class 
loc:@layer1/weights/Variable*
use_locking(*
T0* 
_output_shapes
:
��
�
)train/layer1/weights/Variable/Adam_1/readIdentity$train/layer1/weights/Variable/Adam_1**
_class 
loc:@layer1/weights/Variable*
T0* 
_output_shapes
:
��
\
train/zeros_2Const*
dtype0*
valueB�*    *
_output_shapes	
:�
�
!train/layer1/biases/Variable/AdamVariable*
	container *
_output_shapes	
:�*
dtype0*
shape:�*)
_class
loc:@layer1/biases/Variable*
shared_name 
�
(train/layer1/biases/Variable/Adam/AssignAssign!train/layer1/biases/Variable/Adamtrain/zeros_2*
validate_shape(*)
_class
loc:@layer1/biases/Variable*
use_locking(*
T0*
_output_shapes	
:�
�
&train/layer1/biases/Variable/Adam/readIdentity!train/layer1/biases/Variable/Adam*)
_class
loc:@layer1/biases/Variable*
T0*
_output_shapes	
:�
\
train/zeros_3Const*
dtype0*
valueB�*    *
_output_shapes	
:�
�
#train/layer1/biases/Variable/Adam_1Variable*
	container *
_output_shapes	
:�*
dtype0*
shape:�*)
_class
loc:@layer1/biases/Variable*
shared_name 
�
*train/layer1/biases/Variable/Adam_1/AssignAssign#train/layer1/biases/Variable/Adam_1train/zeros_3*
validate_shape(*)
_class
loc:@layer1/biases/Variable*
use_locking(*
T0*
_output_shapes	
:�
�
(train/layer1/biases/Variable/Adam_1/readIdentity#train/layer1/biases/Variable/Adam_1*)
_class
loc:@layer1/biases/Variable*
T0*
_output_shapes	
:�
d
train/zeros_4Const*
dtype0*
valueB	�
*    *
_output_shapes
:	�

�
"train/layer2/weights/Variable/AdamVariable*
	container *
_output_shapes
:	�
*
dtype0*
shape:	�
**
_class 
loc:@layer2/weights/Variable*
shared_name 
�
)train/layer2/weights/Variable/Adam/AssignAssign"train/layer2/weights/Variable/Adamtrain/zeros_4*
validate_shape(**
_class 
loc:@layer2/weights/Variable*
use_locking(*
T0*
_output_shapes
:	�

�
'train/layer2/weights/Variable/Adam/readIdentity"train/layer2/weights/Variable/Adam**
_class 
loc:@layer2/weights/Variable*
T0*
_output_shapes
:	�

d
train/zeros_5Const*
dtype0*
valueB	�
*    *
_output_shapes
:	�

�
$train/layer2/weights/Variable/Adam_1Variable*
	container *
_output_shapes
:	�
*
dtype0*
shape:	�
**
_class 
loc:@layer2/weights/Variable*
shared_name 
�
+train/layer2/weights/Variable/Adam_1/AssignAssign$train/layer2/weights/Variable/Adam_1train/zeros_5*
validate_shape(**
_class 
loc:@layer2/weights/Variable*
use_locking(*
T0*
_output_shapes
:	�

�
)train/layer2/weights/Variable/Adam_1/readIdentity$train/layer2/weights/Variable/Adam_1**
_class 
loc:@layer2/weights/Variable*
T0*
_output_shapes
:	�

Z
train/zeros_6Const*
dtype0*
valueB
*    *
_output_shapes
:

�
!train/layer2/biases/Variable/AdamVariable*
	container *
_output_shapes
:
*
dtype0*
shape:
*)
_class
loc:@layer2/biases/Variable*
shared_name 
�
(train/layer2/biases/Variable/Adam/AssignAssign!train/layer2/biases/Variable/Adamtrain/zeros_6*
validate_shape(*)
_class
loc:@layer2/biases/Variable*
use_locking(*
T0*
_output_shapes
:

�
&train/layer2/biases/Variable/Adam/readIdentity!train/layer2/biases/Variable/Adam*)
_class
loc:@layer2/biases/Variable*
T0*
_output_shapes
:

Z
train/zeros_7Const*
dtype0*
valueB
*    *
_output_shapes
:

�
#train/layer2/biases/Variable/Adam_1Variable*
	container *
_output_shapes
:
*
dtype0*
shape:
*)
_class
loc:@layer2/biases/Variable*
shared_name 
�
*train/layer2/biases/Variable/Adam_1/AssignAssign#train/layer2/biases/Variable/Adam_1train/zeros_7*
validate_shape(*)
_class
loc:@layer2/biases/Variable*
use_locking(*
T0*
_output_shapes
:

�
(train/layer2/biases/Variable/Adam_1/readIdentity#train/layer2/biases/Variable/Adam_1*)
_class
loc:@layer2/biases/Variable*
T0*
_output_shapes
:

]
train/Adam/learning_rateConst*
dtype0*
valueB
 *o�:*
_output_shapes
: 
U
train/Adam/beta1Const*
dtype0*
valueB
 *fff?*
_output_shapes
: 
U
train/Adam/beta2Const*
dtype0*
valueB
 *w�?*
_output_shapes
: 
W
train/Adam/epsilonConst*
dtype0*
valueB
 *w�+2*
_output_shapes
: 
�
3train/Adam/update_layer1/weights/Variable/ApplyAdam	ApplyAdamlayer1/weights/Variable"train/layer1/weights/Variable/Adam$train/layer1/weights/Variable/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilonGtrain/gradients/layer1/Wx_plus_b/MatMul_grad/tuple/control_dependency_1**
_class 
loc:@layer1/weights/Variable*
use_locking( *
T0* 
_output_shapes
:
��
�
2train/Adam/update_layer1/biases/Variable/ApplyAdam	ApplyAdamlayer1/biases/Variable!train/layer1/biases/Variable/Adam#train/layer1/biases/Variable/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilonDtrain/gradients/layer1/Wx_plus_b/add_grad/tuple/control_dependency_1*)
_class
loc:@layer1/biases/Variable*
use_locking( *
T0*
_output_shapes	
:�
�
3train/Adam/update_layer2/weights/Variable/ApplyAdam	ApplyAdamlayer2/weights/Variable"train/layer2/weights/Variable/Adam$train/layer2/weights/Variable/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilonGtrain/gradients/layer2/Wx_plus_b/MatMul_grad/tuple/control_dependency_1**
_class 
loc:@layer2/weights/Variable*
use_locking( *
T0*
_output_shapes
:	�

�
2train/Adam/update_layer2/biases/Variable/ApplyAdam	ApplyAdamlayer2/biases/Variable!train/layer2/biases/Variable/Adam#train/layer2/biases/Variable/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilonDtrain/gradients/layer2/Wx_plus_b/add_grad/tuple/control_dependency_1*)
_class
loc:@layer2/biases/Variable*
use_locking( *
T0*
_output_shapes
:

�
train/Adam/mulMultrain/beta1_power/readtrain/Adam/beta14^train/Adam/update_layer1/weights/Variable/ApplyAdam3^train/Adam/update_layer1/biases/Variable/ApplyAdam4^train/Adam/update_layer2/weights/Variable/ApplyAdam3^train/Adam/update_layer2/biases/Variable/ApplyAdam**
_class 
loc:@layer1/weights/Variable*
T0*
_output_shapes
: 
�
train/Adam/AssignAssigntrain/beta1_powertrain/Adam/mul*
validate_shape(**
_class 
loc:@layer1/weights/Variable*
use_locking( *
T0*
_output_shapes
: 
�
train/Adam/mul_1Multrain/beta2_power/readtrain/Adam/beta24^train/Adam/update_layer1/weights/Variable/ApplyAdam3^train/Adam/update_layer1/biases/Variable/ApplyAdam4^train/Adam/update_layer2/weights/Variable/ApplyAdam3^train/Adam/update_layer2/biases/Variable/ApplyAdam**
_class 
loc:@layer1/weights/Variable*
T0*
_output_shapes
: 
�
train/Adam/Assign_1Assigntrain/beta2_powertrain/Adam/mul_1*
validate_shape(**
_class 
loc:@layer1/weights/Variable*
use_locking( *
T0*
_output_shapes
: 
�

train/AdamNoOp4^train/Adam/update_layer1/weights/Variable/ApplyAdam3^train/Adam/update_layer1/biases/Variable/ApplyAdam4^train/Adam/update_layer2/weights/Variable/ApplyAdam3^train/Adam/update_layer2/biases/Variable/ApplyAdam^train/Adam/Assign^train/Adam/Assign_1
n
,accuracy/correct_prediction/ArgMax/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
�
"accuracy/correct_prediction/ArgMaxArgMaxlayer2/activation,accuracy/correct_prediction/ArgMax/dimension*
T0*#
_output_shapes
:���������
p
.accuracy/correct_prediction/ArgMax_1/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
�
$accuracy/correct_prediction/ArgMax_1ArgMaxinput/y-input.accuracy/correct_prediction/ArgMax_1/dimension*
T0*#
_output_shapes
:���������
�
!accuracy/correct_prediction/EqualEqual"accuracy/correct_prediction/ArgMax$accuracy/correct_prediction/ArgMax_1*
T0	*#
_output_shapes
:���������
~
accuracy/accuracy/CastCast!accuracy/correct_prediction/Equal*

DstT0*

SrcT0
*#
_output_shapes
:���������
W
accuracy/accuracy/RankRankaccuracy/accuracy/Cast*
T0*
_output_shapes
: 
_
accuracy/accuracy/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
_
accuracy/accuracy/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
�
accuracy/accuracy/rangeRangeaccuracy/accuracy/range/startaccuracy/accuracy/Rankaccuracy/accuracy/range/delta*
_output_shapes
:
�
accuracy/accuracy/MeanMeanaccuracy/accuracy/Castaccuracy/accuracy/range*
T0*
	keep_dims( *
_output_shapes
: 
d
accuracy/ScalarSummary/tagsConst*
dtype0*
valueB Baccuracy*
_output_shapes
: 
}
accuracy/ScalarSummaryScalarSummaryaccuracy/ScalarSummary/tagsaccuracy/accuracy/Mean*
T0*
_output_shapes
: 
�
MergeSummary/MergeSummaryMergeSummaryinput_reshape/ImageSummary&layer1/weights/summaries/ScalarSummary(layer1/weights/summaries/ScalarSummary_1(layer1/weights/summaries/ScalarSummary_2(layer1/weights/summaries/ScalarSummary_3)layer1/weights/summaries/HistogramSummary%layer1/biases/summaries/ScalarSummary'layer1/biases/summaries/ScalarSummary_1'layer1/biases/summaries/ScalarSummary_2'layer1/biases/summaries/ScalarSummary_3(layer1/biases/summaries/HistogramSummary!layer1/Wx_plus_b/HistogramSummarylayer1/HistogramSummarydropout/ScalarSummary&layer2/weights/summaries/ScalarSummary(layer2/weights/summaries/ScalarSummary_1(layer2/weights/summaries/ScalarSummary_2(layer2/weights/summaries/ScalarSummary_3)layer2/weights/summaries/HistogramSummary%layer2/biases/summaries/ScalarSummary'layer2/biases/summaries/ScalarSummary_1'layer2/biases/summaries/ScalarSummary_2'layer2/biases/summaries/ScalarSummary_3(layer2/biases/summaries/HistogramSummary!layer2/Wx_plus_b/HistogramSummarylayer2/HistogramSummarycross_entropy/ScalarSummaryaccuracy/ScalarSummary*
_output_shapes
: *
N
�
initNoOp^layer1/weights/Variable/Assign^layer1/biases/Variable/Assign^layer2/weights/Variable/Assign^layer2/biases/Variable/Assign^train/beta1_power/Assign^train/beta2_power/Assign*^train/layer1/weights/Variable/Adam/Assign,^train/layer1/weights/Variable/Adam_1/Assign)^train/layer1/biases/Variable/Adam/Assign+^train/layer1/biases/Variable/Adam_1/Assign*^train/layer2/weights/Variable/Adam/Assign,^train/layer2/weights/Variable/Adam_1/Assign)^train/layer2/biases/Variable/Adam/Assign+^train/layer2/biases/Variable/Adam_1/Assign"	