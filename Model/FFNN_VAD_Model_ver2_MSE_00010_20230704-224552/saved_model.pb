Гт
ђТ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
*
Erf
x"T
y"T"
Ttype:
2
.
Identity

input"T
output"T"	
Ttype
2
L2Loss
t"T
output"T"
Ttype:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
С
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
ї
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8љЩ

"Adam/ffnn_vad_model/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/ffnn_vad_model/dense_1/bias/v

6Adam/ffnn_vad_model/dense_1/bias/v/Read/ReadVariableOpReadVariableOp"Adam/ffnn_vad_model/dense_1/bias/v*
_output_shapes
:*
dtype0
Ѕ
$Adam/ffnn_vad_model/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	л*5
shared_name&$Adam/ffnn_vad_model/dense_1/kernel/v

8Adam/ffnn_vad_model/dense_1/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/ffnn_vad_model/dense_1/kernel/v*
_output_shapes
:	л*
dtype0

 Adam/ffnn_vad_model/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:л*1
shared_name" Adam/ffnn_vad_model/dense/bias/v

4Adam/ffnn_vad_model/dense/bias/v/Read/ReadVariableOpReadVariableOp Adam/ffnn_vad_model/dense/bias/v*
_output_shapes	
:л*
dtype0
Ё
"Adam/ffnn_vad_model/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	л*3
shared_name$"Adam/ffnn_vad_model/dense/kernel/v

6Adam/ffnn_vad_model/dense/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/ffnn_vad_model/dense/kernel/v*
_output_shapes
:	л*
dtype0

"Adam/ffnn_vad_model/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/ffnn_vad_model/dense_1/bias/m

6Adam/ffnn_vad_model/dense_1/bias/m/Read/ReadVariableOpReadVariableOp"Adam/ffnn_vad_model/dense_1/bias/m*
_output_shapes
:*
dtype0
Ѕ
$Adam/ffnn_vad_model/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	л*5
shared_name&$Adam/ffnn_vad_model/dense_1/kernel/m

8Adam/ffnn_vad_model/dense_1/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/ffnn_vad_model/dense_1/kernel/m*
_output_shapes
:	л*
dtype0

 Adam/ffnn_vad_model/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:л*1
shared_name" Adam/ffnn_vad_model/dense/bias/m

4Adam/ffnn_vad_model/dense/bias/m/Read/ReadVariableOpReadVariableOp Adam/ffnn_vad_model/dense/bias/m*
_output_shapes	
:л*
dtype0
Ё
"Adam/ffnn_vad_model/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	л*3
shared_name$"Adam/ffnn_vad_model/dense/kernel/m

6Adam/ffnn_vad_model/dense/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/ffnn_vad_model/dense/kernel/m*
_output_shapes
:	л*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	

ffnn_vad_model/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameffnn_vad_model/dense_1/bias

/ffnn_vad_model/dense_1/bias/Read/ReadVariableOpReadVariableOpffnn_vad_model/dense_1/bias*
_output_shapes
:*
dtype0

ffnn_vad_model/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	л*.
shared_nameffnn_vad_model/dense_1/kernel

1ffnn_vad_model/dense_1/kernel/Read/ReadVariableOpReadVariableOpffnn_vad_model/dense_1/kernel*
_output_shapes
:	л*
dtype0

ffnn_vad_model/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:л**
shared_nameffnn_vad_model/dense/bias

-ffnn_vad_model/dense/bias/Read/ReadVariableOpReadVariableOpffnn_vad_model/dense/bias*
_output_shapes	
:л*
dtype0

ffnn_vad_model/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	л*,
shared_nameffnn_vad_model/dense/kernel

/ffnn_vad_model/dense/kernel/Read/ReadVariableOpReadVariableOpffnn_vad_model/dense/kernel*
_output_shapes
:	л*
dtype0
z
serving_default_input_1Placeholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
А
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1ffnn_vad_model/dense/kernelffnn_vad_model/dense/biasffnn_vad_model/dense_1/kernelffnn_vad_model/dense_1/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference_signature_wrapper_13946

NoOpNoOp
)
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Н(
valueГ(BА( BЉ(
ї
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

dense1
	dropout

output_layer
	optimizer

signatures*
 
0
1
2
3*
 
0
1
2
3*
	
0* 
А
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
trace_0
trace_1
trace_2
trace_3* 
6
trace_0
trace_1
trace_2
trace_3* 
* 
І
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

kernel
bias*
Ѕ
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses
+_random_generator* 
І
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

kernel
bias*

2iter

3beta_1

4beta_2
	5decay
6learning_ratem_m`mambvcvdvevf*

7serving_default* 
[U
VARIABLE_VALUEffnn_vad_model/dense/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEffnn_vad_model/dense/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEffnn_vad_model/dense_1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEffnn_vad_model/dense_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*

8trace_0* 
* 

0
	1

2*

90
:1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0
1*

0
1*
	
0* 
А
;non_trainable_variables

<layers
=metrics
>layer_regularization_losses
?layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
@activity_regularizer_fn
*$&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses*

Btrace_0* 

Ctrace_0* 
* 
* 
* 

Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses* 

Itrace_0
Jtrace_1* 

Ktrace_0
Ltrace_1* 
* 

0
1*

0
1*
* 

Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses*

Rtrace_0* 

Strace_0* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
8
T	variables
U	keras_api
	Vtotal
	Wcount*
H
X	variables
Y	keras_api
	Ztotal
	[count
\
_fn_kwargs*
* 
* 
* 
	
0* 
* 

]trace_0* 

^trace_0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

V0
W1*

T	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Z0
[1*

X	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
~x
VARIABLE_VALUE"Adam/ffnn_vad_model/dense/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/ffnn_vad_model/dense/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUE$Adam/ffnn_vad_model/dense_1/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/ffnn_vad_model/dense_1/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/ffnn_vad_model/dense/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/ffnn_vad_model/dense/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUE$Adam/ffnn_vad_model/dense_1/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/ffnn_vad_model/dense_1/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Я	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename/ffnn_vad_model/dense/kernel/Read/ReadVariableOp-ffnn_vad_model/dense/bias/Read/ReadVariableOp1ffnn_vad_model/dense_1/kernel/Read/ReadVariableOp/ffnn_vad_model/dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp6Adam/ffnn_vad_model/dense/kernel/m/Read/ReadVariableOp4Adam/ffnn_vad_model/dense/bias/m/Read/ReadVariableOp8Adam/ffnn_vad_model/dense_1/kernel/m/Read/ReadVariableOp6Adam/ffnn_vad_model/dense_1/bias/m/Read/ReadVariableOp6Adam/ffnn_vad_model/dense/kernel/v/Read/ReadVariableOp4Adam/ffnn_vad_model/dense/bias/v/Read/ReadVariableOp8Adam/ffnn_vad_model/dense_1/kernel/v/Read/ReadVariableOp6Adam/ffnn_vad_model/dense_1/bias/v/Read/ReadVariableOpConst*"
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *'
f"R 
__inference__traced_save_14248
І
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameffnn_vad_model/dense/kernelffnn_vad_model/dense/biasffnn_vad_model/dense_1/kernelffnn_vad_model/dense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcount"Adam/ffnn_vad_model/dense/kernel/m Adam/ffnn_vad_model/dense/bias/m$Adam/ffnn_vad_model/dense_1/kernel/m"Adam/ffnn_vad_model/dense_1/bias/m"Adam/ffnn_vad_model/dense/kernel/v Adam/ffnn_vad_model/dense/bias/v$Adam/ffnn_vad_model/dense_1/kernel/v"Adam/ffnn_vad_model/dense_1/bias/v*!
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__traced_restore_14321ср
#
і
I__inference_ffnn_vad_model_layer_call_and_return_conditional_losses_13893
input_1
dense_13868:	л
dense_13870:	л 
dense_1_13882:	л
dense_1_13884:
identity

identity_1Ђdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallЂ=ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOpц
dense/StatefulPartitionedCallStatefulPartitionedCallinput_1dense_13868dense_13870*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџл*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_13685У
)dense/ActivityRegularizer/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *5
f0R.
,__inference_dense_activity_regularizer_13656u
dense/ActivityRegularizer/ShapeShape&dense/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:w
-dense/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/dense/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/dense/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
'dense/ActivityRegularizer/strided_sliceStridedSlice(dense/ActivityRegularizer/Shape:output:06dense/ActivityRegularizer/strided_slice/stack:output:08dense/ActivityRegularizer/strided_slice/stack_1:output:08dense/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
dense/ActivityRegularizer/CastCast0dense/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Ѕ
!dense/ActivityRegularizer/truedivRealDiv2dense/ActivityRegularizer/PartitionedCall:output:0"dense/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: й
dropout/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџл* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_13704
dense_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_1_13882dense_1_13884*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_13716
=ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_13868*
_output_shapes
:	л*
dtype0 
.ffnn_vad_model/dense/kernel/Regularizer/L2LossL2LossEffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: r
-ffnn_vad_model/dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *эPQ;Ф
+ffnn_vad_model/dense/kernel/Regularizer/mulMul6ffnn_vad_model/dense/kernel/Regularizer/mul/x:output:07ffnn_vad_model/dense/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџe

Identity_1Identity%dense/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: Ш
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall>^ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2~
=ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOp=ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOp:P L
'
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_1
-

I__inference_ffnn_vad_model_layer_call_and_return_conditional_losses_14014

inputs7
$dense_matmul_readvariableop_resource:	л4
%dense_biasadd_readvariableop_resource:	л9
&dense_1_matmul_readvariableop_resource:	л5
'dense_1_biasadd_readvariableop_resource:
identity

identity_1Ђdense/BiasAdd/ReadVariableOpЂdense/MatMul/ReadVariableOpЂdense_1/BiasAdd/ReadVariableOpЂdense_1/MatMul/ReadVariableOpЂ=ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOp
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	л*
dtype0v
dense/MatMulMatMulinputs#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџл
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:л*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџлU
dense/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?{
dense/Gelu/mulMuldense/Gelu/mul/x:output:0dense/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџлV
dense/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *ѓЕ?
dense/Gelu/truedivRealDivdense/BiasAdd:output:0dense/Gelu/Cast/x:output:0*
T0*(
_output_shapes
:џџџџџџџџџл`
dense/Gelu/ErfErfdense/Gelu/truediv:z:0*
T0*(
_output_shapes
:џџџџџџџџџлU
dense/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?y
dense/Gelu/addAddV2dense/Gelu/add/x:output:0dense/Gelu/Erf:y:0*
T0*(
_output_shapes
:џџџџџџџџџлr
dense/Gelu/mul_1Muldense/Gelu/mul:z:0dense/Gelu/add:z:0*
T0*(
_output_shapes
:џџџџџџџџџлa
 dense/ActivityRegularizer/L2LossL2Lossdense/Gelu/mul_1:z:0*
T0*
_output_shapes
: d
dense/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Н";
dense/ActivityRegularizer/mulMul(dense/ActivityRegularizer/mul/x:output:0)dense/ActivityRegularizer/L2Loss:output:0*
T0*
_output_shapes
: c
dense/ActivityRegularizer/ShapeShapedense/Gelu/mul_1:z:0*
T0*
_output_shapes
:w
-dense/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/dense/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/dense/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
'dense/ActivityRegularizer/strided_sliceStridedSlice(dense/ActivityRegularizer/Shape:output:06dense/ActivityRegularizer/strided_slice/stack:output:08dense/ActivityRegularizer/strided_slice/stack_1:output:08dense/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
dense/ActivityRegularizer/CastCast0dense/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 
!dense/ActivityRegularizer/truedivRealDiv!dense/ActivityRegularizer/mul:z:0"dense/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: e
dropout/IdentityIdentitydense/Gelu/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџл
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	л*
dtype0
dense_1/MatMulMatMuldropout/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЃ
=ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	л*
dtype0 
.ffnn_vad_model/dense/kernel/Regularizer/L2LossL2LossEffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: r
-ffnn_vad_model/dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *эPQ;Ф
+ffnn_vad_model/dense/kernel/Regularizer/mulMul6ffnn_vad_model/dense/kernel/Regularizer/mul/x:output:07ffnn_vad_model/dense/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: g
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџe

Identity_1Identity%dense/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp>^ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2~
=ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOp=ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ц2
я	
__inference__traced_save_14248
file_prefix:
6savev2_ffnn_vad_model_dense_kernel_read_readvariableop8
4savev2_ffnn_vad_model_dense_bias_read_readvariableop<
8savev2_ffnn_vad_model_dense_1_kernel_read_readvariableop:
6savev2_ffnn_vad_model_dense_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableopA
=savev2_adam_ffnn_vad_model_dense_kernel_m_read_readvariableop?
;savev2_adam_ffnn_vad_model_dense_bias_m_read_readvariableopC
?savev2_adam_ffnn_vad_model_dense_1_kernel_m_read_readvariableopA
=savev2_adam_ffnn_vad_model_dense_1_bias_m_read_readvariableopA
=savev2_adam_ffnn_vad_model_dense_kernel_v_read_readvariableop?
;savev2_adam_ffnn_vad_model_dense_bias_v_read_readvariableopC
?savev2_adam_ffnn_vad_model_dense_1_kernel_v_read_readvariableopA
=savev2_adam_ffnn_vad_model_dense_1_bias_v_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 

SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*А	
valueІ	BЃ	B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B ѕ	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:06savev2_ffnn_vad_model_dense_kernel_read_readvariableop4savev2_ffnn_vad_model_dense_bias_read_readvariableop8savev2_ffnn_vad_model_dense_1_kernel_read_readvariableop6savev2_ffnn_vad_model_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop=savev2_adam_ffnn_vad_model_dense_kernel_m_read_readvariableop;savev2_adam_ffnn_vad_model_dense_bias_m_read_readvariableop?savev2_adam_ffnn_vad_model_dense_1_kernel_m_read_readvariableop=savev2_adam_ffnn_vad_model_dense_1_bias_m_read_readvariableop=savev2_adam_ffnn_vad_model_dense_kernel_v_read_readvariableop;savev2_adam_ffnn_vad_model_dense_bias_v_read_readvariableop?savev2_adam_ffnn_vad_model_dense_1_kernel_v_read_readvariableop=savev2_adam_ffnn_vad_model_dense_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *$
dtypes
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*
_input_shapes
: :	л:л:	л:: : : : : : : : : :	л:л:	л::	л:л:	л:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	л:!

_output_shapes	
:л:%!

_output_shapes
:	л: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	л:!

_output_shapes	
:л:%!

_output_shapes
:	л: 

_output_shapes
::%!

_output_shapes
:	л:!

_output_shapes	
:л:%!

_output_shapes
:	л: 

_output_shapes
::

_output_shapes
: 
Ё$

I__inference_ffnn_vad_model_layer_call_and_return_conditional_losses_13839

inputs
dense_13814:	л
dense_13816:	л 
dense_1_13828:	л
dense_1_13830:
identity

identity_1Ђdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallЂdropout/StatefulPartitionedCallЂ=ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOpх
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_13814dense_13816*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџл*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_13685У
)dense/ActivityRegularizer/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *5
f0R.
,__inference_dense_activity_regularizer_13656u
dense/ActivityRegularizer/ShapeShape&dense/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:w
-dense/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/dense/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/dense/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
'dense/ActivityRegularizer/strided_sliceStridedSlice(dense/ActivityRegularizer/Shape:output:06dense/ActivityRegularizer/strided_slice/stack:output:08dense/ActivityRegularizer/strided_slice/stack_1:output:08dense/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
dense/ActivityRegularizer/CastCast0dense/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Ѕ
!dense/ActivityRegularizer/truedivRealDiv2dense/ActivityRegularizer/PartitionedCall:output:0"dense/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: щ
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџл* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_13770
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_1_13828dense_1_13830*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_13716
=ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_13814*
_output_shapes
:	л*
dtype0 
.ffnn_vad_model/dense/kernel/Regularizer/L2LossL2LossEffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: r
-ffnn_vad_model/dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *эPQ;Ф
+ffnn_vad_model/dense/kernel/Regularizer/mulMul6ffnn_vad_model/dense/kernel/Regularizer/mul/x:output:07ffnn_vad_model/dense/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџe

Identity_1Identity%dense/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: ъ
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall>^ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2~
=ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOp=ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
С

%__inference_dense_layer_call_fn_14083

inputs
unknown:	л
	unknown_0:	л
identityЂStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџл*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_13685p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџл`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
­4

I__inference_ffnn_vad_model_layer_call_and_return_conditional_losses_14061

inputs7
$dense_matmul_readvariableop_resource:	л4
%dense_biasadd_readvariableop_resource:	л9
&dense_1_matmul_readvariableop_resource:	л5
'dense_1_biasadd_readvariableop_resource:
identity

identity_1Ђdense/BiasAdd/ReadVariableOpЂdense/MatMul/ReadVariableOpЂdense_1/BiasAdd/ReadVariableOpЂdense_1/MatMul/ReadVariableOpЂ=ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOp
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	л*
dtype0v
dense/MatMulMatMulinputs#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџл
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:л*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџлU
dense/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?{
dense/Gelu/mulMuldense/Gelu/mul/x:output:0dense/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџлV
dense/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *ѓЕ?
dense/Gelu/truedivRealDivdense/BiasAdd:output:0dense/Gelu/Cast/x:output:0*
T0*(
_output_shapes
:џџџџџџџџџл`
dense/Gelu/ErfErfdense/Gelu/truediv:z:0*
T0*(
_output_shapes
:џџџџџџџџџлU
dense/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?y
dense/Gelu/addAddV2dense/Gelu/add/x:output:0dense/Gelu/Erf:y:0*
T0*(
_output_shapes
:џџџџџџџџџлr
dense/Gelu/mul_1Muldense/Gelu/mul:z:0dense/Gelu/add:z:0*
T0*(
_output_shapes
:џџџџџџџџџлa
 dense/ActivityRegularizer/L2LossL2Lossdense/Gelu/mul_1:z:0*
T0*
_output_shapes
: d
dense/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Н";
dense/ActivityRegularizer/mulMul(dense/ActivityRegularizer/mul/x:output:0)dense/ActivityRegularizer/L2Loss:output:0*
T0*
_output_shapes
: c
dense/ActivityRegularizer/ShapeShapedense/Gelu/mul_1:z:0*
T0*
_output_shapes
:w
-dense/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/dense/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/dense/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
'dense/ActivityRegularizer/strided_sliceStridedSlice(dense/ActivityRegularizer/Shape:output:06dense/ActivityRegularizer/strided_slice/stack:output:08dense/ActivityRegularizer/strided_slice/stack_1:output:08dense/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
dense/ActivityRegularizer/CastCast0dense/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 
!dense/ActivityRegularizer/truedivRealDiv!dense/ActivityRegularizer/mul:z:0"dense/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Hи?
dropout/dropout/MulMuldense/Gelu/mul_1:z:0dropout/dropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџлY
dropout/dropout/ShapeShapedense/Gelu/mul_1:z:0*
T0*
_output_shapes
:
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџл*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ёr	>П
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџл
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџл
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџл
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	л*
dtype0
dense_1/MatMulMatMuldropout/dropout/Mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЃ
=ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	л*
dtype0 
.ffnn_vad_model/dense/kernel/Regularizer/L2LossL2LossEffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: r
-ffnn_vad_model/dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *эPQ;Ф
+ffnn_vad_model/dense/kernel/Regularizer/mulMul6ffnn_vad_model/dense/kernel/Regularizer/mul/x:output:07ffnn_vad_model/dense/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: g
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџe

Identity_1Identity%dense/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp>^ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2~
=ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOp=ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ђ
`
'__inference_dropout_layer_call_fn_14126

inputs
identityЂStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџл* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_13770p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџл`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџл22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџл
 
_user_specified_nameinputs
V
О
!__inference__traced_restore_14321
file_prefix?
,assignvariableop_ffnn_vad_model_dense_kernel:	л;
,assignvariableop_1_ffnn_vad_model_dense_bias:	лC
0assignvariableop_2_ffnn_vad_model_dense_1_kernel:	л<
.assignvariableop_3_ffnn_vad_model_dense_1_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: $
assignvariableop_9_total_1: %
assignvariableop_10_count_1: #
assignvariableop_11_total: #
assignvariableop_12_count: I
6assignvariableop_13_adam_ffnn_vad_model_dense_kernel_m:	лC
4assignvariableop_14_adam_ffnn_vad_model_dense_bias_m:	лK
8assignvariableop_15_adam_ffnn_vad_model_dense_1_kernel_m:	лD
6assignvariableop_16_adam_ffnn_vad_model_dense_1_bias_m:I
6assignvariableop_17_adam_ffnn_vad_model_dense_kernel_v:	лC
4assignvariableop_18_adam_ffnn_vad_model_dense_bias_v:	лK
8assignvariableop_19_adam_ffnn_vad_model_dense_1_kernel_v:	лD
6assignvariableop_20_adam_ffnn_vad_model_dense_1_bias_v:
identity_22ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_3ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9

RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*А	
valueІ	BЃ	B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*l
_output_shapesZ
X::::::::::::::::::::::*$
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp,assignvariableop_ffnn_vad_model_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp,assignvariableop_1_ffnn_vad_model_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp0assignvariableop_2_ffnn_vad_model_dense_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp.assignvariableop_3_ffnn_vad_model_dense_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_total_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_count_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_13AssignVariableOp6assignvariableop_13_adam_ffnn_vad_model_dense_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_14AssignVariableOp4assignvariableop_14_adam_ffnn_vad_model_dense_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_15AssignVariableOp8assignvariableop_15_adam_ffnn_vad_model_dense_1_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_16AssignVariableOp6assignvariableop_16_adam_ffnn_vad_model_dense_1_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_17AssignVariableOp6assignvariableop_17_adam_ffnn_vad_model_dense_kernel_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_18AssignVariableOp4assignvariableop_18_adam_ffnn_vad_model_dense_bias_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_19AssignVariableOp8assignvariableop_19_adam_ffnn_vad_model_dense_1_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_20AssignVariableOp6assignvariableop_20_adam_ffnn_vad_model_dense_1_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 
Identity_21Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_22IdentityIdentity_21:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_22Identity_22:output:0*?
_input_shapes.
,: : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
 
C
'__inference_dropout_layer_call_fn_14121

inputs
identityБ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџл* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_13704a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:џџџџџџџџџл"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџл:P L
(
_output_shapes
:џџџџџџџџџл
 
_user_specified_nameinputs
Л
Г
@__inference_dense_layer_call_and_return_conditional_losses_13685

inputs1
matmul_readvariableop_resource:	л.
biasadd_readvariableop_resource:	л
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂ=ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	л*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџлs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:л*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџлO

Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?i
Gelu/mulMulGelu/mul/x:output:0BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџлP
Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *ѓЕ?r
Gelu/truedivRealDivBiasAdd:output:0Gelu/Cast/x:output:0*
T0*(
_output_shapes
:џџџџџџџџџлT
Gelu/ErfErfGelu/truediv:z:0*
T0*(
_output_shapes
:џџџџџџџџџлO

Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?g
Gelu/addAddV2Gelu/add/x:output:0Gelu/Erf:y:0*
T0*(
_output_shapes
:џџџџџџџџџл`

Gelu/mul_1MulGelu/mul:z:0Gelu/add:z:0*
T0*(
_output_shapes
:џџџџџџџџџл
=ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	л*
dtype0 
.ffnn_vad_model/dense/kernel/Regularizer/L2LossL2LossEffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: r
-ffnn_vad_model/dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *эPQ;Ф
+ffnn_vad_model/dense/kernel/Regularizer/mulMul6ffnn_vad_model/dense/kernel/Regularizer/mul/x:output:07ffnn_vad_model/dense/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: ^
IdentityIdentityGelu/mul_1:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџлЗ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp>^ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2~
=ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOp=ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ќ
е
.__inference_ffnn_vad_model_layer_call_fn_13740
input_1
unknown:	л
	unknown_0:	л
	unknown_1:	л
	unknown_2:
identityЂStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:џџџџџџџџџ: *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_ffnn_vad_model_layer_call_and_return_conditional_losses_13728o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_1
Щ	
є
B__inference_dense_1_layer_call_and_return_conditional_losses_13716

inputs1
matmul_readvariableop_resource:	л-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	л*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџл: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџл
 
_user_specified_nameinputs
ј	
a
B__inference_dropout_layer_call_and_return_conditional_losses_14143

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Hи?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџлC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџл*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ёr	>Ї
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџлp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџлj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџлZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџл"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџл:P L
(
_output_shapes
:џџџџџџџџџл
 
_user_specified_nameinputs
й
`
B__inference_dropout_layer_call_and_return_conditional_losses_14131

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:џџџџџџџџџл\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:џџџџџџџџџл"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџл:P L
(
_output_shapes
:џџџџџџџџџл
 
_user_specified_nameinputs
Љ
д
.__inference_ffnn_vad_model_layer_call_fn_13974

inputs
unknown:	л
	unknown_0:	л
	unknown_1:	л
	unknown_2:
identityЂStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:џџџџџџџџџ: *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_ffnn_vad_model_layer_call_and_return_conditional_losses_13839o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ќ
е
.__inference_ffnn_vad_model_layer_call_fn_13865
input_1
unknown:	л
	unknown_0:	л
	unknown_1:	л
	unknown_2:
identityЂStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:џџџџџџџџџ: *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_ffnn_vad_model_layer_call_and_return_conditional_losses_13839o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_1
Л
Г
@__inference_dense_layer_call_and_return_conditional_losses_14116

inputs1
matmul_readvariableop_resource:	л.
biasadd_readvariableop_resource:	л
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂ=ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	л*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџлs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:л*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџлO

Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?i
Gelu/mulMulGelu/mul/x:output:0BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџлP
Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *ѓЕ?r
Gelu/truedivRealDivBiasAdd:output:0Gelu/Cast/x:output:0*
T0*(
_output_shapes
:џџџџџџџџџлT
Gelu/ErfErfGelu/truediv:z:0*
T0*(
_output_shapes
:џџџџџџџџџлO

Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?g
Gelu/addAddV2Gelu/add/x:output:0Gelu/Erf:y:0*
T0*(
_output_shapes
:џџџџџџџџџл`

Gelu/mul_1MulGelu/mul:z:0Gelu/add:z:0*
T0*(
_output_shapes
:џџџџџџџџџл
=ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	л*
dtype0 
.ffnn_vad_model/dense/kernel/Regularizer/L2LossL2LossEffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: r
-ffnn_vad_model/dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *эPQ;Ф
+ffnn_vad_model/dense/kernel/Regularizer/mulMul6ffnn_vad_model/dense/kernel/Regularizer/mul/x:output:07ffnn_vad_model/dense/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: ^
IdentityIdentityGelu/mul_1:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџлЗ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp>^ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2~
=ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOp=ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
є
C
,__inference_dense_activity_regularizer_13656
x
identity4
L2LossL2Lossx*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Н";L
mulMulmul/x:output:0L2Loss:output:0*
T0*
_output_shapes
: >
IdentityIdentitymul:z:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
й
`
B__inference_dropout_layer_call_and_return_conditional_losses_13704

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:џџџџџџџџџл\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:џџџџџџџџџл"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџл:P L
(
_output_shapes
:џџџџџџџџџл
 
_user_specified_nameinputs
Є$

I__inference_ffnn_vad_model_layer_call_and_return_conditional_losses_13921
input_1
dense_13896:	л
dense_13898:	л 
dense_1_13910:	л
dense_1_13912:
identity

identity_1Ђdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallЂdropout/StatefulPartitionedCallЂ=ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOpц
dense/StatefulPartitionedCallStatefulPartitionedCallinput_1dense_13896dense_13898*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџл*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_13685У
)dense/ActivityRegularizer/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *5
f0R.
,__inference_dense_activity_regularizer_13656u
dense/ActivityRegularizer/ShapeShape&dense/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:w
-dense/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/dense/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/dense/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
'dense/ActivityRegularizer/strided_sliceStridedSlice(dense/ActivityRegularizer/Shape:output:06dense/ActivityRegularizer/strided_slice/stack:output:08dense/ActivityRegularizer/strided_slice/stack_1:output:08dense/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
dense/ActivityRegularizer/CastCast0dense/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Ѕ
!dense/ActivityRegularizer/truedivRealDiv2dense/ActivityRegularizer/PartitionedCall:output:0"dense/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: щ
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџл* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_13770
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_1_13910dense_1_13912*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_13716
=ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_13896*
_output_shapes
:	л*
dtype0 
.ffnn_vad_model/dense/kernel/Regularizer/L2LossL2LossEffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: r
-ffnn_vad_model/dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *эPQ;Ф
+ffnn_vad_model/dense/kernel/Regularizer/mulMul6ffnn_vad_model/dense/kernel/Regularizer/mul/x:output:07ffnn_vad_model/dense/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџe

Identity_1Identity%dense/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: ъ
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall>^ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2~
=ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOp=ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOp:P L
'
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_1
Щ	
є
B__inference_dense_1_layer_call_and_return_conditional_losses_14162

inputs1
matmul_readvariableop_resource:	л-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	л*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџл: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџл
 
_user_specified_nameinputs
#
ѕ
I__inference_ffnn_vad_model_layer_call_and_return_conditional_losses_13728

inputs
dense_13686:	л
dense_13688:	л 
dense_1_13717:	л
dense_1_13719:
identity

identity_1Ђdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallЂ=ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOpх
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_13686dense_13688*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџл*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_13685У
)dense/ActivityRegularizer/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *5
f0R.
,__inference_dense_activity_regularizer_13656u
dense/ActivityRegularizer/ShapeShape&dense/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:w
-dense/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/dense/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/dense/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
'dense/ActivityRegularizer/strided_sliceStridedSlice(dense/ActivityRegularizer/Shape:output:06dense/ActivityRegularizer/strided_slice/stack:output:08dense/ActivityRegularizer/strided_slice/stack_1:output:08dense/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
dense/ActivityRegularizer/CastCast0dense/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Ѕ
!dense/ActivityRegularizer/truedivRealDiv2dense/ActivityRegularizer/PartitionedCall:output:0"dense/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: й
dropout/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџл* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_13704
dense_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_1_13717dense_1_13719*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_13716
=ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_13686*
_output_shapes
:	л*
dtype0 
.ffnn_vad_model/dense/kernel/Regularizer/L2LossL2LossEffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: r
-ffnn_vad_model/dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *эPQ;Ф
+ffnn_vad_model/dense/kernel/Regularizer/mulMul6ffnn_vad_model/dense/kernel/Regularizer/mul/x:output:07ffnn_vad_model/dense/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџe

Identity_1Identity%dense/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: Ш
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall>^ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2~
=ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOp=ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ј	
a
B__inference_dropout_layer_call_and_return_conditional_losses_13770

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Hи?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџлC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџл*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ёr	>Ї
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџлp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџлj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџлZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџл"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџл:P L
(
_output_shapes
:џџџџџџџџџл
 
_user_specified_nameinputs
Љ
д
.__inference_ffnn_vad_model_layer_call_fn_13960

inputs
unknown:	л
	unknown_0:	л
	unknown_1:	л
	unknown_2:
identityЂStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:џџџџџџџџџ: *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_ffnn_vad_model_layer_call_and_return_conditional_losses_13728o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ѕ
Ъ
#__inference_signature_wrapper_13946
input_1
unknown:	л
	unknown_0:	л
	unknown_1:	л
	unknown_2:
identityЂStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__wrapped_model_13648o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_1
Ъ

Щ
__inference_loss_fn_0_14074Y
Fffnn_vad_model_dense_kernel_regularizer_l2loss_readvariableop_resource:	л
identityЂ=ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOpХ
=ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpFffnn_vad_model_dense_kernel_regularizer_l2loss_readvariableop_resource*
_output_shapes
:	л*
dtype0 
.ffnn_vad_model/dense/kernel/Regularizer/L2LossL2LossEffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: r
-ffnn_vad_model/dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *эPQ;Ф
+ffnn_vad_model/dense/kernel/Regularizer/mulMul6ffnn_vad_model/dense/kernel/Regularizer/mul/x:output:07ffnn_vad_model/dense/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: m
IdentityIdentity/ffnn_vad_model/dense/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOp>^ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2~
=ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOp=ffnn_vad_model/dense/kernel/Regularizer/L2Loss/ReadVariableOp
ў-

 __inference__wrapped_model_13648
input_1F
3ffnn_vad_model_dense_matmul_readvariableop_resource:	лC
4ffnn_vad_model_dense_biasadd_readvariableop_resource:	лH
5ffnn_vad_model_dense_1_matmul_readvariableop_resource:	лD
6ffnn_vad_model_dense_1_biasadd_readvariableop_resource:
identityЂ+ffnn_vad_model/dense/BiasAdd/ReadVariableOpЂ*ffnn_vad_model/dense/MatMul/ReadVariableOpЂ-ffnn_vad_model/dense_1/BiasAdd/ReadVariableOpЂ,ffnn_vad_model/dense_1/MatMul/ReadVariableOp
*ffnn_vad_model/dense/MatMul/ReadVariableOpReadVariableOp3ffnn_vad_model_dense_matmul_readvariableop_resource*
_output_shapes
:	л*
dtype0
ffnn_vad_model/dense/MatMulMatMulinput_12ffnn_vad_model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџл
+ffnn_vad_model/dense/BiasAdd/ReadVariableOpReadVariableOp4ffnn_vad_model_dense_biasadd_readvariableop_resource*
_output_shapes	
:л*
dtype0Ж
ffnn_vad_model/dense/BiasAddBiasAdd%ffnn_vad_model/dense/MatMul:product:03ffnn_vad_model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџлd
ffnn_vad_model/dense/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ј
ffnn_vad_model/dense/Gelu/mulMul(ffnn_vad_model/dense/Gelu/mul/x:output:0%ffnn_vad_model/dense/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџлe
 ffnn_vad_model/dense/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *ѓЕ?Б
!ffnn_vad_model/dense/Gelu/truedivRealDiv%ffnn_vad_model/dense/BiasAdd:output:0)ffnn_vad_model/dense/Gelu/Cast/x:output:0*
T0*(
_output_shapes
:џџџџџџџџџл~
ffnn_vad_model/dense/Gelu/ErfErf%ffnn_vad_model/dense/Gelu/truediv:z:0*
T0*(
_output_shapes
:џџџџџџџџџлd
ffnn_vad_model/dense/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?І
ffnn_vad_model/dense/Gelu/addAddV2(ffnn_vad_model/dense/Gelu/add/x:output:0!ffnn_vad_model/dense/Gelu/Erf:y:0*
T0*(
_output_shapes
:џџџџџџџџџл
ffnn_vad_model/dense/Gelu/mul_1Mul!ffnn_vad_model/dense/Gelu/mul:z:0!ffnn_vad_model/dense/Gelu/add:z:0*
T0*(
_output_shapes
:џџџџџџџџџл
/ffnn_vad_model/dense/ActivityRegularizer/L2LossL2Loss#ffnn_vad_model/dense/Gelu/mul_1:z:0*
T0*
_output_shapes
: s
.ffnn_vad_model/dense/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Н";Ч
,ffnn_vad_model/dense/ActivityRegularizer/mulMul7ffnn_vad_model/dense/ActivityRegularizer/mul/x:output:08ffnn_vad_model/dense/ActivityRegularizer/L2Loss:output:0*
T0*
_output_shapes
: 
.ffnn_vad_model/dense/ActivityRegularizer/ShapeShape#ffnn_vad_model/dense/Gelu/mul_1:z:0*
T0*
_output_shapes
:
<ffnn_vad_model/dense/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
>ffnn_vad_model/dense/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
>ffnn_vad_model/dense/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
6ffnn_vad_model/dense/ActivityRegularizer/strided_sliceStridedSlice7ffnn_vad_model/dense/ActivityRegularizer/Shape:output:0Effnn_vad_model/dense/ActivityRegularizer/strided_slice/stack:output:0Gffnn_vad_model/dense/ActivityRegularizer/strided_slice/stack_1:output:0Gffnn_vad_model/dense/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskІ
-ffnn_vad_model/dense/ActivityRegularizer/CastCast?ffnn_vad_model/dense/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: С
0ffnn_vad_model/dense/ActivityRegularizer/truedivRealDiv0ffnn_vad_model/dense/ActivityRegularizer/mul:z:01ffnn_vad_model/dense/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 
ffnn_vad_model/dropout/IdentityIdentity#ffnn_vad_model/dense/Gelu/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџлЃ
,ffnn_vad_model/dense_1/MatMul/ReadVariableOpReadVariableOp5ffnn_vad_model_dense_1_matmul_readvariableop_resource*
_output_shapes
:	л*
dtype0Й
ffnn_vad_model/dense_1/MatMulMatMul(ffnn_vad_model/dropout/Identity:output:04ffnn_vad_model/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
-ffnn_vad_model/dense_1/BiasAdd/ReadVariableOpReadVariableOp6ffnn_vad_model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Л
ffnn_vad_model/dense_1/BiasAddBiasAdd'ffnn_vad_model/dense_1/MatMul:product:05ffnn_vad_model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџv
IdentityIdentity'ffnn_vad_model/dense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp,^ffnn_vad_model/dense/BiasAdd/ReadVariableOp+^ffnn_vad_model/dense/MatMul/ReadVariableOp.^ffnn_vad_model/dense_1/BiasAdd/ReadVariableOp-^ffnn_vad_model/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : : : 2Z
+ffnn_vad_model/dense/BiasAdd/ReadVariableOp+ffnn_vad_model/dense/BiasAdd/ReadVariableOp2X
*ffnn_vad_model/dense/MatMul/ReadVariableOp*ffnn_vad_model/dense/MatMul/ReadVariableOp2^
-ffnn_vad_model/dense_1/BiasAdd/ReadVariableOp-ffnn_vad_model/dense_1/BiasAdd/ReadVariableOp2\
,ffnn_vad_model/dense_1/MatMul/ReadVariableOp,ffnn_vad_model/dense_1/MatMul/ReadVariableOp:P L
'
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_1
Ф

'__inference_dense_1_layer_call_fn_14152

inputs
unknown:	л
	unknown_0:
identityЂStatefulPartitionedCallк
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_13716o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџл: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџл
 
_user_specified_nameinputs

У
D__inference_dense_layer_call_and_return_all_conditional_losses_14094

inputs
unknown:	л
	unknown_0:	л
identity

identity_1ЂStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџл*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_13685Ѓ
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *5
f0R.
,__inference_dense_activity_regularizer_13656p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџлX

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs"Е	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ћ
serving_default
;
input_10
serving_default_input_1:0џџџџџџџџџ<
output_10
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:р

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

dense1
	dropout

output_layer
	optimizer

signatures"
_tf_keras_model
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
'
0"
trackable_list_wrapper
Ъ
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
э
trace_0
trace_1
trace_2
trace_32
.__inference_ffnn_vad_model_layer_call_fn_13740
.__inference_ffnn_vad_model_layer_call_fn_13960
.__inference_ffnn_vad_model_layer_call_fn_13974
.__inference_ffnn_vad_model_layer_call_fn_13865П
ЖВВ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 ztrace_0ztrace_1ztrace_2ztrace_3
й
trace_0
trace_1
trace_2
trace_32ю
I__inference_ffnn_vad_model_layer_call_and_return_conditional_losses_14014
I__inference_ffnn_vad_model_layer_call_and_return_conditional_losses_14061
I__inference_ffnn_vad_model_layer_call_and_return_conditional_losses_13893
I__inference_ffnn_vad_model_layer_call_and_return_conditional_losses_13921П
ЖВВ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 ztrace_0ztrace_1ztrace_2ztrace_3
ЫBШ
 __inference__wrapped_model_13648input_1"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Л
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
М
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses
+_random_generator"
_tf_keras_layer
Л
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer

2iter

3beta_1

4beta_2
	5decay
6learning_ratem_m`mambvcvdvevf"
	optimizer
,
7serving_default"
signature_map
.:,	л2ffnn_vad_model/dense/kernel
(:&л2ffnn_vad_model/dense/bias
0:.	л2ffnn_vad_model/dense_1/kernel
):'2ffnn_vad_model/dense_1/bias
Ь
8trace_02Џ
__inference_loss_fn_0_14074
В
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *Ђ z8trace_0
 "
trackable_list_wrapper
5
0
	1

2"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B§
.__inference_ffnn_vad_model_layer_call_fn_13740input_1"П
ЖВВ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
џBќ
.__inference_ffnn_vad_model_layer_call_fn_13960inputs"П
ЖВВ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
џBќ
.__inference_ffnn_vad_model_layer_call_fn_13974inputs"П
ЖВВ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
B§
.__inference_ffnn_vad_model_layer_call_fn_13865input_1"П
ЖВВ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
B
I__inference_ffnn_vad_model_layer_call_and_return_conditional_losses_14014inputs"П
ЖВВ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
B
I__inference_ffnn_vad_model_layer_call_and_return_conditional_losses_14061inputs"П
ЖВВ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
B
I__inference_ffnn_vad_model_layer_call_and_return_conditional_losses_13893input_1"П
ЖВВ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
B
I__inference_ffnn_vad_model_layer_call_and_return_conditional_losses_13921input_1"П
ЖВВ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
0"
trackable_list_wrapper
Ъ
;non_trainable_variables

<layers
=metrics
>layer_regularization_losses
?layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
@activity_regularizer_fn
*$&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
щ
Btrace_02Ь
%__inference_dense_layer_call_fn_14083Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zBtrace_0

Ctrace_02ы
D__inference_dense_layer_call_and_return_all_conditional_losses_14094Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zCtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
П
Itrace_0
Jtrace_12
'__inference_dropout_layer_call_fn_14121
'__inference_dropout_layer_call_fn_14126Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zItrace_0zJtrace_1
ѕ
Ktrace_0
Ltrace_12О
B__inference_dropout_layer_call_and_return_conditional_losses_14131
B__inference_dropout_layer_call_and_return_conditional_losses_14143Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zKtrace_0zLtrace_1
"
_generic_user_object
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
ы
Rtrace_02Ю
'__inference_dense_1_layer_call_fn_14152Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zRtrace_0

Strace_02щ
B__inference_dense_1_layer_call_and_return_conditional_losses_14162Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zStrace_0
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ЪBЧ
#__inference_signature_wrapper_13946input_1"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ВBЏ
__inference_loss_fn_0_14074"
В
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *Ђ 
N
T	variables
U	keras_api
	Vtotal
	Wcount"
_tf_keras_metric
^
X	variables
Y	keras_api
	Ztotal
	[count
\
_fn_kwargs"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
ї
]trace_02к
,__inference_dense_activity_regularizer_13656Љ
В
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *Ђ
	z]trace_0

^trace_02ч
@__inference_dense_layer_call_and_return_conditional_losses_14116Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z^trace_0
йBж
%__inference_dense_layer_call_fn_14083inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
јBѕ
D__inference_dense_layer_call_and_return_all_conditional_losses_14094inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ьBщ
'__inference_dropout_layer_call_fn_14121inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
'__inference_dropout_layer_call_fn_14126inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
B__inference_dropout_layer_call_and_return_conditional_losses_14131inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
B__inference_dropout_layer_call_and_return_conditional_losses_14143inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
лBи
'__inference_dense_1_layer_call_fn_14152inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
іBѓ
B__inference_dense_1_layer_call_and_return_conditional_losses_14162inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
V0
W1"
trackable_list_wrapper
-
T	variables"
_generic_user_object
:  (2total
:  (2count
.
Z0
[1"
trackable_list_wrapper
-
X	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
тBп
,__inference_dense_activity_regularizer_13656x"Љ
В
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *Ђ
	
єBё
@__inference_dense_layer_call_and_return_conditional_losses_14116inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
3:1	л2"Adam/ffnn_vad_model/dense/kernel/m
-:+л2 Adam/ffnn_vad_model/dense/bias/m
5:3	л2$Adam/ffnn_vad_model/dense_1/kernel/m
.:,2"Adam/ffnn_vad_model/dense_1/bias/m
3:1	л2"Adam/ffnn_vad_model/dense/kernel/v
-:+л2 Adam/ffnn_vad_model/dense/bias/v
5:3	л2$Adam/ffnn_vad_model/dense_1/kernel/v
.:,2"Adam/ffnn_vad_model/dense_1/bias/v
 __inference__wrapped_model_13648m0Ђ-
&Ђ#
!
input_1џџџџџџџџџ
Њ "3Њ0
.
output_1"
output_1џџџџџџџџџЃ
B__inference_dense_1_layer_call_and_return_conditional_losses_14162]0Ђ-
&Ђ#
!
inputsџџџџџџџџџл
Њ "%Ђ"

0џџџџџџџџџ
 {
'__inference_dense_1_layer_call_fn_14152P0Ђ-
&Ђ#
!
inputsџџџџџџџџџл
Њ "џџџџџџџџџV
,__inference_dense_activity_regularizer_13656&Ђ
Ђ
	
x
Њ " Г
D__inference_dense_layer_call_and_return_all_conditional_losses_14094k/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "4Ђ1

0џџџџџџџџџл

	
1/0 Ё
@__inference_dense_layer_call_and_return_conditional_losses_14116]/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "&Ђ#

0џџџџџџџџџл
 y
%__inference_dense_layer_call_fn_14083P/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџлЄ
B__inference_dropout_layer_call_and_return_conditional_losses_14131^4Ђ1
*Ђ'
!
inputsџџџџџџџџџл
p 
Њ "&Ђ#

0џџџџџџџџџл
 Є
B__inference_dropout_layer_call_and_return_conditional_losses_14143^4Ђ1
*Ђ'
!
inputsџџџџџџџџџл
p
Њ "&Ђ#

0џџџџџџџџџл
 |
'__inference_dropout_layer_call_fn_14121Q4Ђ1
*Ђ'
!
inputsџџџџџџџџџл
p 
Њ "џџџџџџџџџл|
'__inference_dropout_layer_call_fn_14126Q4Ђ1
*Ђ'
!
inputsџџџџџџџџџл
p
Њ "џџџџџџџџџлЪ
I__inference_ffnn_vad_model_layer_call_and_return_conditional_losses_13893}@Ђ=
&Ђ#
!
input_1џџџџџџџџџ
Њ

trainingp "3Ђ0

0џџџџџџџџџ

	
1/0 Ъ
I__inference_ffnn_vad_model_layer_call_and_return_conditional_losses_13921}@Ђ=
&Ђ#
!
input_1џџџџџџџџџ
Њ

trainingp"3Ђ0

0џџџџџџџџџ

	
1/0 Щ
I__inference_ffnn_vad_model_layer_call_and_return_conditional_losses_14014|?Ђ<
%Ђ"
 
inputsџџџџџџџџџ
Њ

trainingp "3Ђ0

0џџџџџџџџџ

	
1/0 Щ
I__inference_ffnn_vad_model_layer_call_and_return_conditional_losses_14061|?Ђ<
%Ђ"
 
inputsџџџџџџџџџ
Њ

trainingp"3Ђ0

0џџџџџџџџџ

	
1/0 
.__inference_ffnn_vad_model_layer_call_fn_13740b@Ђ=
&Ђ#
!
input_1џџџџџџџџџ
Њ

trainingp "џџџџџџџџџ
.__inference_ffnn_vad_model_layer_call_fn_13865b@Ђ=
&Ђ#
!
input_1џџџџџџџџџ
Њ

trainingp"џџџџџџџџџ
.__inference_ffnn_vad_model_layer_call_fn_13960a?Ђ<
%Ђ"
 
inputsџџџџџџџџџ
Њ

trainingp "џџџџџџџџџ
.__inference_ffnn_vad_model_layer_call_fn_13974a?Ђ<
%Ђ"
 
inputsџџџџџџџџџ
Њ

trainingp"џџџџџџџџџ:
__inference_loss_fn_0_14074Ђ

Ђ 
Њ " 
#__inference_signature_wrapper_13946x;Ђ8
Ђ 
1Њ.
,
input_1!
input_1џџџџџџџџџ"3Њ0
.
output_1"
output_1џџџџџџџџџ