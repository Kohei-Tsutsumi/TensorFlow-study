??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
dtypetype?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12unknown8??
?
custom_model/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*,
shared_namecustom_model/dense_1/kernel
?
/custom_model/dense_1/kernel/Read/ReadVariableOpReadVariableOpcustom_model/dense_1/kernel*
_output_shapes

:*
dtype0
?
custom_model/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namecustom_model/dense_1/bias
?
-custom_model/dense_1/bias/Read/ReadVariableOpReadVariableOpcustom_model/dense_1/bias*
_output_shapes
:*
dtype0
?
custom_model/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*,
shared_namecustom_model/dense_2/kernel
?
/custom_model/dense_2/kernel/Read/ReadVariableOpReadVariableOpcustom_model/dense_2/kernel*
_output_shapes

:*
dtype0
?
custom_model/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namecustom_model/dense_2/bias
?
-custom_model/dense_2/bias/Read/ReadVariableOpReadVariableOpcustom_model/dense_2/bias*
_output_shapes
:*
dtype0
?
custom_model/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*,
shared_namecustom_model/dense_3/kernel
?
/custom_model/dense_3/kernel/Read/ReadVariableOpReadVariableOpcustom_model/dense_3/kernel*
_output_shapes

:
*
dtype0
?
custom_model/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
**
shared_namecustom_model/dense_3/bias
?
-custom_model/dense_3/bias/Read/ReadVariableOpReadVariableOpcustom_model/dense_3/bias*
_output_shapes
:
*
dtype0

NoOpNoOp
?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
?
hidden_units
dense_layers
	variables
regularization_losses
trainable_variables
	keras_api

signatures
 

0
	1

2
*
0
1
2
3
4
5
 
*
0
1
2
3
4
5
?

layers
	variables
regularization_losses
layer_metrics
metrics
layer_regularization_losses
non_trainable_variables
trainable_variables
 
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
 trainable_variables
!	keras_api
WU
VARIABLE_VALUEcustom_model/dense_1/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEcustom_model/dense_1/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEcustom_model/dense_2/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEcustom_model/dense_2/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEcustom_model/dense_3/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEcustom_model/dense_3/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE

0
	1

2
 
 
 
 

0
1
 

0
1
?

"layers
	variables
regularization_losses
#layer_metrics
$metrics
%layer_regularization_losses
&non_trainable_variables
trainable_variables

0
1
 

0
1
?

'layers
	variables
regularization_losses
(layer_metrics
)metrics
*layer_regularization_losses
+non_trainable_variables
trainable_variables

0
1
 

0
1
?

,layers
	variables
regularization_losses
-layer_metrics
.metrics
/layer_regularization_losses
0non_trainable_variables
 trainable_variables
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
z
serving_default_input_1Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1custom_model/dense_1/kernelcustom_model/dense_1/biascustom_model/dense_2/kernelcustom_model/dense_2/biascustom_model/dense_3/kernelcustom_model/dense_3/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference_signature_wrapper_1870
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename/custom_model/dense_1/kernel/Read/ReadVariableOp-custom_model/dense_1/bias/Read/ReadVariableOp/custom_model/dense_2/kernel/Read/ReadVariableOp-custom_model/dense_2/bias/Read/ReadVariableOp/custom_model/dense_3/kernel/Read/ReadVariableOp-custom_model/dense_3/bias/Read/ReadVariableOpConst*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *&
f!R
__inference__traced_save_1968
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamecustom_model/dense_1/kernelcustom_model/dense_1/biascustom_model/dense_2/kernelcustom_model/dense_2/biascustom_model/dense_3/kernelcustom_model/dense_3/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__traced_restore_1996??
?	
?
A__inference_dense_3_layer_call_and_return_conditional_losses_1918

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
A__inference_dense_1_layer_call_and_return_conditional_losses_1764

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?!
?
__inference__wrapped_model_1750
input_17
3custom_model_dense_1_matmul_readvariableop_resource8
4custom_model_dense_1_biasadd_readvariableop_resource7
3custom_model_dense_2_matmul_readvariableop_resource8
4custom_model_dense_2_biasadd_readvariableop_resource7
3custom_model_dense_3_matmul_readvariableop_resource8
4custom_model_dense_3_biasadd_readvariableop_resource
identity??+custom_model/dense_1/BiasAdd/ReadVariableOp?*custom_model/dense_1/MatMul/ReadVariableOp?+custom_model/dense_2/BiasAdd/ReadVariableOp?*custom_model/dense_2/MatMul/ReadVariableOp?+custom_model/dense_3/BiasAdd/ReadVariableOp?*custom_model/dense_3/MatMul/ReadVariableOp?
*custom_model/dense_1/MatMul/ReadVariableOpReadVariableOp3custom_model_dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype02,
*custom_model/dense_1/MatMul/ReadVariableOp?
custom_model/dense_1/MatMulMatMulinput_12custom_model/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
custom_model/dense_1/MatMul?
+custom_model/dense_1/BiasAdd/ReadVariableOpReadVariableOp4custom_model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+custom_model/dense_1/BiasAdd/ReadVariableOp?
custom_model/dense_1/BiasAddBiasAdd%custom_model/dense_1/MatMul:product:03custom_model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
custom_model/dense_1/BiasAdd?
*custom_model/dense_2/MatMul/ReadVariableOpReadVariableOp3custom_model_dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype02,
*custom_model/dense_2/MatMul/ReadVariableOp?
custom_model/dense_2/MatMulMatMul%custom_model/dense_1/BiasAdd:output:02custom_model/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
custom_model/dense_2/MatMul?
+custom_model/dense_2/BiasAdd/ReadVariableOpReadVariableOp4custom_model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+custom_model/dense_2/BiasAdd/ReadVariableOp?
custom_model/dense_2/BiasAddBiasAdd%custom_model/dense_2/MatMul:product:03custom_model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
custom_model/dense_2/BiasAdd?
*custom_model/dense_3/MatMul/ReadVariableOpReadVariableOp3custom_model_dense_3_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02,
*custom_model/dense_3/MatMul/ReadVariableOp?
custom_model/dense_3/MatMulMatMul%custom_model/dense_2/BiasAdd:output:02custom_model/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
custom_model/dense_3/MatMul?
+custom_model/dense_3/BiasAdd/ReadVariableOpReadVariableOp4custom_model_dense_3_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02-
+custom_model/dense_3/BiasAdd/ReadVariableOp?
custom_model/dense_3/BiasAddBiasAdd%custom_model/dense_3/MatMul:product:03custom_model/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
custom_model/dense_3/BiasAdd?
IdentityIdentity%custom_model/dense_3/BiasAdd:output:0,^custom_model/dense_1/BiasAdd/ReadVariableOp+^custom_model/dense_1/MatMul/ReadVariableOp,^custom_model/dense_2/BiasAdd/ReadVariableOp+^custom_model/dense_2/MatMul/ReadVariableOp,^custom_model/dense_3/BiasAdd/ReadVariableOp+^custom_model/dense_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::::2Z
+custom_model/dense_1/BiasAdd/ReadVariableOp+custom_model/dense_1/BiasAdd/ReadVariableOp2X
*custom_model/dense_1/MatMul/ReadVariableOp*custom_model/dense_1/MatMul/ReadVariableOp2Z
+custom_model/dense_2/BiasAdd/ReadVariableOp+custom_model/dense_2/BiasAdd/ReadVariableOp2X
*custom_model/dense_2/MatMul/ReadVariableOp*custom_model/dense_2/MatMul/ReadVariableOp2Z
+custom_model/dense_3/BiasAdd/ReadVariableOp+custom_model/dense_3/BiasAdd/ReadVariableOp2X
*custom_model/dense_3/MatMul/ReadVariableOp*custom_model/dense_3/MatMul/ReadVariableOp:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
+__inference_custom_model_layer_call_fn_1851
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_custom_model_layer_call_and_return_conditional_losses_18332
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?
{
&__inference_dense_1_layer_call_fn_1889

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_17642
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
A__inference_dense_2_layer_call_and_return_conditional_losses_1790

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
F__inference_custom_model_layer_call_and_return_conditional_losses_1833
input_1
dense_1_1775
dense_1_1777
dense_2_1801
dense_2_1803
dense_3_1827
dense_3_1829
identity??dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCallinput_1dense_1_1775dense_1_1777*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_17642!
dense_1/StatefulPartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_1801dense_2_1803*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_17902!
dense_2/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_1827dense_3_1829*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_18162!
dense_3/StatefulPartitionedCall?
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::::2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?
{
&__inference_dense_3_layer_call_fn_1927

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_18162
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
A__inference_dense_3_layer_call_and_return_conditional_losses_1816

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference__traced_save_1968
file_prefix:
6savev2_custom_model_dense_1_kernel_read_readvariableop8
4savev2_custom_model_dense_1_bias_read_readvariableop:
6savev2_custom_model_dense_2_kernel_read_readvariableop8
4savev2_custom_model_dense_2_bias_read_readvariableop:
6savev2_custom_model_dense_3_kernel_read_readvariableop8
4savev2_custom_model_dense_3_bias_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*!
valueBB B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:06savev2_custom_model_dense_1_kernel_read_readvariableop4savev2_custom_model_dense_1_bias_read_readvariableop6savev2_custom_model_dense_2_kernel_read_readvariableop4savev2_custom_model_dense_2_bias_read_readvariableop6savev2_custom_model_dense_3_kernel_read_readvariableop4savev2_custom_model_dense_3_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
	22
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*G
_input_shapes6
4: :::::
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:
: 

_output_shapes
:
:

_output_shapes
: 
?	
?
A__inference_dense_2_layer_call_and_return_conditional_losses_1899

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
 __inference__traced_restore_1996
file_prefix0
,assignvariableop_custom_model_dense_1_kernel0
,assignvariableop_1_custom_model_dense_1_bias2
.assignvariableop_2_custom_model_dense_2_kernel0
,assignvariableop_3_custom_model_dense_2_bias2
.assignvariableop_4_custom_model_dense_3_kernel0
,assignvariableop_5_custom_model_dense_3_bias

identity_7??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*!
valueBB B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*0
_output_shapes
:::::::*
dtypes
	22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp,assignvariableop_custom_model_dense_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp,assignvariableop_1_custom_model_dense_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp.assignvariableop_2_custom_model_dense_2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp,assignvariableop_3_custom_model_dense_2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp.assignvariableop_4_custom_model_dense_3_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp,assignvariableop_5_custom_model_dense_3_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?

Identity_6Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_6?

Identity_7IdentityIdentity_6:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5*
T0*
_output_shapes
: 2

Identity_7"!

identity_7Identity_7:output:0*-
_input_shapes
: ::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_5:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
"__inference_signature_wrapper_1870
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__wrapped_model_17502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?	
?
A__inference_dense_1_layer_call_and_return_conditional_losses_1880

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
{
&__inference_dense_2_layer_call_fn_1908

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_17902
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
;
input_10
serving_default_input_1:0?????????<
output_10
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:?Q
?
hidden_units
dense_layers
	variables
regularization_losses
trainable_variables
	keras_api

signatures
1_default_save_signature
*2&call_and_return_all_conditional_losses
3__call__"?
_tf_keras_model?{"class_name": "CustomModel", "name": "custom_model", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"hidden_units": [16, 16, 10]}, "is_graph_network": false, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "CustomModel", "config": {"hidden_units": [16, 16, 10]}}}
 "
trackable_list_wrapper
5
0
	1

2"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
?

layers
	variables
regularization_losses
layer_metrics
metrics
layer_regularization_losses
non_trainable_variables
trainable_variables
3__call__
1_default_save_signature
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
,
4serving_default"
signature_map
?

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*5&call_and_return_all_conditional_losses
6__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 16, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 5}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 5]}}
?

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*7&call_and_return_all_conditional_losses
8__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 16, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 16]}}
?

kernel
bias
	variables
regularization_losses
 trainable_variables
!	keras_api
*9&call_and_return_all_conditional_losses
:__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 16]}}
-:+2custom_model/dense_1/kernel
':%2custom_model/dense_1/bias
-:+2custom_model/dense_2/kernel
':%2custom_model/dense_2/bias
-:+
2custom_model/dense_3/kernel
':%
2custom_model/dense_3/bias
5
0
	1

2"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?

"layers
	variables
regularization_losses
#layer_metrics
$metrics
%layer_regularization_losses
&non_trainable_variables
trainable_variables
6__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?

'layers
	variables
regularization_losses
(layer_metrics
)metrics
*layer_regularization_losses
+non_trainable_variables
trainable_variables
8__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?

,layers
	variables
regularization_losses
-layer_metrics
.metrics
/layer_regularization_losses
0non_trainable_variables
 trainable_variables
:__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?2?
__inference__wrapped_model_1750?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *&?#
!?
input_1?????????
?2?
F__inference_custom_model_layer_call_and_return_conditional_losses_1833?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *&?#
!?
input_1?????????
?2?
+__inference_custom_model_layer_call_fn_1851?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *&?#
!?
input_1?????????
?B?
"__inference_signature_wrapper_1870input_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_dense_1_layer_call_and_return_conditional_losses_1880?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_dense_1_layer_call_fn_1889?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_dense_2_layer_call_and_return_conditional_losses_1899?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_dense_2_layer_call_fn_1908?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_dense_3_layer_call_and_return_conditional_losses_1918?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_dense_3_layer_call_fn_1927?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
__inference__wrapped_model_1750o0?-
&?#
!?
input_1?????????
? "3?0
.
output_1"?
output_1?????????
?
F__inference_custom_model_layer_call_and_return_conditional_losses_1833a0?-
&?#
!?
input_1?????????
? "%?"
?
0?????????

? ?
+__inference_custom_model_layer_call_fn_1851T0?-
&?#
!?
input_1?????????
? "??????????
?
A__inference_dense_1_layer_call_and_return_conditional_losses_1880\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? y
&__inference_dense_1_layer_call_fn_1889O/?,
%?"
 ?
inputs?????????
? "???????????
A__inference_dense_2_layer_call_and_return_conditional_losses_1899\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? y
&__inference_dense_2_layer_call_fn_1908O/?,
%?"
 ?
inputs?????????
? "???????????
A__inference_dense_3_layer_call_and_return_conditional_losses_1918\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????

? y
&__inference_dense_3_layer_call_fn_1927O/?,
%?"
 ?
inputs?????????
? "??????????
?
"__inference_signature_wrapper_1870z;?8
? 
1?.
,
input_1!?
input_1?????????"3?0
.
output_1"?
output_1?????????
