??
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
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
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
.
Rsqrt
x"T
y"T"
Ttype:

2
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.02v2.6.0-rc2-32-g919f693420e8??
w
dense1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_namedense1/kernel
p
!dense1/kernel/Read/ReadVariableOpReadVariableOpdense1/kernel*
_output_shapes
:	?*
dtype0
o
dense1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense1/bias
h
dense1/bias/Read/ReadVariableOpReadVariableOpdense1/bias*
_output_shapes	
:?*
dtype0
q
batch1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namebatch1/gamma
j
 batch1/gamma/Read/ReadVariableOpReadVariableOpbatch1/gamma*
_output_shapes	
:?*
dtype0
o
batch1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namebatch1/beta
h
batch1/beta/Read/ReadVariableOpReadVariableOpbatch1/beta*
_output_shapes	
:?*
dtype0
}
batch1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*#
shared_namebatch1/moving_mean
v
&batch1/moving_mean/Read/ReadVariableOpReadVariableOpbatch1/moving_mean*
_output_shapes	
:?*
dtype0
?
batch1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_namebatch1/moving_variance
~
*batch1/moving_variance/Read/ReadVariableOpReadVariableOpbatch1/moving_variance*
_output_shapes	
:?*
dtype0
x
dense2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense2/kernel
q
!dense2/kernel/Read/ReadVariableOpReadVariableOpdense2/kernel* 
_output_shapes
:
??*
dtype0
o
dense2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense2/bias
h
dense2/bias/Read/ReadVariableOpReadVariableOpdense2/bias*
_output_shapes	
:?*
dtype0
q
batch2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namebatch2/gamma
j
 batch2/gamma/Read/ReadVariableOpReadVariableOpbatch2/gamma*
_output_shapes	
:?*
dtype0
o
batch2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namebatch2/beta
h
batch2/beta/Read/ReadVariableOpReadVariableOpbatch2/beta*
_output_shapes	
:?*
dtype0
}
batch2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*#
shared_namebatch2/moving_mean
v
&batch2/moving_mean/Read/ReadVariableOpReadVariableOpbatch2/moving_mean*
_output_shapes	
:?*
dtype0
?
batch2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_namebatch2/moving_variance
~
*batch2/moving_variance/Read/ReadVariableOpReadVariableOpbatch2/moving_variance*
_output_shapes	
:?*
dtype0
x
dense3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense3/kernel
q
!dense3/kernel/Read/ReadVariableOpReadVariableOpdense3/kernel* 
_output_shapes
:
??*
dtype0
o
dense3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense3/bias
h
dense3/bias/Read/ReadVariableOpReadVariableOpdense3/bias*
_output_shapes	
:?*
dtype0
q
batch3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namebatch3/gamma
j
 batch3/gamma/Read/ReadVariableOpReadVariableOpbatch3/gamma*
_output_shapes	
:?*
dtype0
o
batch3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namebatch3/beta
h
batch3/beta/Read/ReadVariableOpReadVariableOpbatch3/beta*
_output_shapes	
:?*
dtype0
}
batch3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*#
shared_namebatch3/moving_mean
v
&batch3/moving_mean/Read/ReadVariableOpReadVariableOpbatch3/moving_mean*
_output_shapes	
:?*
dtype0
?
batch3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_namebatch3/moving_variance
~
*batch3/moving_variance/Read/ReadVariableOpReadVariableOpbatch3/moving_variance*
_output_shapes	
:?*
dtype0

policy_net/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*"
shared_namepolicy_net/kernel
x
%policy_net/kernel/Read/ReadVariableOpReadVariableOppolicy_net/kernel*
_output_shapes
:	?*
dtype0
v
policy_net/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namepolicy_net/bias
o
#policy_net/bias/Read/ReadVariableOpReadVariableOppolicy_net/bias*
_output_shapes
:*
dtype0
}
value_net/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*!
shared_namevalue_net/kernel
v
$value_net/kernel/Read/ReadVariableOpReadVariableOpvalue_net/kernel*
_output_shapes
:	?*
dtype0
t
value_net/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namevalue_net/bias
m
"value_net/bias/Read/ReadVariableOpReadVariableOpvalue_net/bias*
_output_shapes
:*
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
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
?
Adam/dense1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*%
shared_nameAdam/dense1/kernel/m
~
(Adam/dense1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense1/kernel/m*
_output_shapes
:	?*
dtype0
}
Adam/dense1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*#
shared_nameAdam/dense1/bias/m
v
&Adam/dense1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense1/bias/m*
_output_shapes	
:?*
dtype0

Adam/batch1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/batch1/gamma/m
x
'Adam/batch1/gamma/m/Read/ReadVariableOpReadVariableOpAdam/batch1/gamma/m*
_output_shapes	
:?*
dtype0
}
Adam/batch1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*#
shared_nameAdam/batch1/beta/m
v
&Adam/batch1/beta/m/Read/ReadVariableOpReadVariableOpAdam/batch1/beta/m*
_output_shapes	
:?*
dtype0
?
Adam/dense2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*%
shared_nameAdam/dense2/kernel/m

(Adam/dense2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense2/kernel/m* 
_output_shapes
:
??*
dtype0
}
Adam/dense2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*#
shared_nameAdam/dense2/bias/m
v
&Adam/dense2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense2/bias/m*
_output_shapes	
:?*
dtype0

Adam/batch2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/batch2/gamma/m
x
'Adam/batch2/gamma/m/Read/ReadVariableOpReadVariableOpAdam/batch2/gamma/m*
_output_shapes	
:?*
dtype0
}
Adam/batch2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*#
shared_nameAdam/batch2/beta/m
v
&Adam/batch2/beta/m/Read/ReadVariableOpReadVariableOpAdam/batch2/beta/m*
_output_shapes	
:?*
dtype0
?
Adam/dense3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*%
shared_nameAdam/dense3/kernel/m

(Adam/dense3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense3/kernel/m* 
_output_shapes
:
??*
dtype0
}
Adam/dense3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*#
shared_nameAdam/dense3/bias/m
v
&Adam/dense3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense3/bias/m*
_output_shapes	
:?*
dtype0

Adam/batch3/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/batch3/gamma/m
x
'Adam/batch3/gamma/m/Read/ReadVariableOpReadVariableOpAdam/batch3/gamma/m*
_output_shapes	
:?*
dtype0
}
Adam/batch3/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*#
shared_nameAdam/batch3/beta/m
v
&Adam/batch3/beta/m/Read/ReadVariableOpReadVariableOpAdam/batch3/beta/m*
_output_shapes	
:?*
dtype0
?
Adam/policy_net/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*)
shared_nameAdam/policy_net/kernel/m
?
,Adam/policy_net/kernel/m/Read/ReadVariableOpReadVariableOpAdam/policy_net/kernel/m*
_output_shapes
:	?*
dtype0
?
Adam/policy_net/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/policy_net/bias/m
}
*Adam/policy_net/bias/m/Read/ReadVariableOpReadVariableOpAdam/policy_net/bias/m*
_output_shapes
:*
dtype0
?
Adam/value_net/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*(
shared_nameAdam/value_net/kernel/m
?
+Adam/value_net/kernel/m/Read/ReadVariableOpReadVariableOpAdam/value_net/kernel/m*
_output_shapes
:	?*
dtype0
?
Adam/value_net/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/value_net/bias/m
{
)Adam/value_net/bias/m/Read/ReadVariableOpReadVariableOpAdam/value_net/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*%
shared_nameAdam/dense1/kernel/v
~
(Adam/dense1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense1/kernel/v*
_output_shapes
:	?*
dtype0
}
Adam/dense1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*#
shared_nameAdam/dense1/bias/v
v
&Adam/dense1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense1/bias/v*
_output_shapes	
:?*
dtype0

Adam/batch1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/batch1/gamma/v
x
'Adam/batch1/gamma/v/Read/ReadVariableOpReadVariableOpAdam/batch1/gamma/v*
_output_shapes	
:?*
dtype0
}
Adam/batch1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*#
shared_nameAdam/batch1/beta/v
v
&Adam/batch1/beta/v/Read/ReadVariableOpReadVariableOpAdam/batch1/beta/v*
_output_shapes	
:?*
dtype0
?
Adam/dense2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*%
shared_nameAdam/dense2/kernel/v

(Adam/dense2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense2/kernel/v* 
_output_shapes
:
??*
dtype0
}
Adam/dense2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*#
shared_nameAdam/dense2/bias/v
v
&Adam/dense2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense2/bias/v*
_output_shapes	
:?*
dtype0

Adam/batch2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/batch2/gamma/v
x
'Adam/batch2/gamma/v/Read/ReadVariableOpReadVariableOpAdam/batch2/gamma/v*
_output_shapes	
:?*
dtype0
}
Adam/batch2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*#
shared_nameAdam/batch2/beta/v
v
&Adam/batch2/beta/v/Read/ReadVariableOpReadVariableOpAdam/batch2/beta/v*
_output_shapes	
:?*
dtype0
?
Adam/dense3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*%
shared_nameAdam/dense3/kernel/v

(Adam/dense3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense3/kernel/v* 
_output_shapes
:
??*
dtype0
}
Adam/dense3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*#
shared_nameAdam/dense3/bias/v
v
&Adam/dense3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense3/bias/v*
_output_shapes	
:?*
dtype0

Adam/batch3/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/batch3/gamma/v
x
'Adam/batch3/gamma/v/Read/ReadVariableOpReadVariableOpAdam/batch3/gamma/v*
_output_shapes	
:?*
dtype0
}
Adam/batch3/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*#
shared_nameAdam/batch3/beta/v
v
&Adam/batch3/beta/v/Read/ReadVariableOpReadVariableOpAdam/batch3/beta/v*
_output_shapes	
:?*
dtype0
?
Adam/policy_net/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*)
shared_nameAdam/policy_net/kernel/v
?
,Adam/policy_net/kernel/v/Read/ReadVariableOpReadVariableOpAdam/policy_net/kernel/v*
_output_shapes
:	?*
dtype0
?
Adam/policy_net/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/policy_net/bias/v
}
*Adam/policy_net/bias/v/Read/ReadVariableOpReadVariableOpAdam/policy_net/bias/v*
_output_shapes
:*
dtype0
?
Adam/value_net/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*(
shared_nameAdam/value_net/kernel/v
?
+Adam/value_net/kernel/v/Read/ReadVariableOpReadVariableOpAdam/value_net/kernel/v*
_output_shapes
:	?*
dtype0
?
Adam/value_net/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/value_net/bias/v
{
)Adam/value_net/bias/v/Read/ReadVariableOpReadVariableOpAdam/value_net/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?p
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?p
value?pB?p B?p
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer-8

layer-9
layer_with_weights-4
layer-10
layer_with_weights-5
layer-11
layer-12
layer-13
layer_with_weights-6
layer-14
layer_with_weights-7
layer-15
	optimizer
loss

signatures
#_self_saveable_object_factories
trainable_variables
regularization_losses
	variables
	keras_api
%
#_self_saveable_object_factories
w
#_self_saveable_object_factories
trainable_variables
regularization_losses
	variables
	keras_api
?

kernel
 bias
#!_self_saveable_object_factories
"trainable_variables
#regularization_losses
$	variables
%	keras_api
?
&axis
	'gamma
(beta
)moving_mean
*moving_variance
#+_self_saveable_object_factories
,trainable_variables
-regularization_losses
.	variables
/	keras_api
w
#0_self_saveable_object_factories
1trainable_variables
2regularization_losses
3	variables
4	keras_api
w
#5_self_saveable_object_factories
6trainable_variables
7regularization_losses
8	variables
9	keras_api
?

:kernel
;bias
#<_self_saveable_object_factories
=trainable_variables
>regularization_losses
?	variables
@	keras_api
?
Aaxis
	Bgamma
Cbeta
Dmoving_mean
Emoving_variance
#F_self_saveable_object_factories
Gtrainable_variables
Hregularization_losses
I	variables
J	keras_api
w
#K_self_saveable_object_factories
Ltrainable_variables
Mregularization_losses
N	variables
O	keras_api
w
#P_self_saveable_object_factories
Qtrainable_variables
Rregularization_losses
S	variables
T	keras_api
?

Ukernel
Vbias
#W_self_saveable_object_factories
Xtrainable_variables
Yregularization_losses
Z	variables
[	keras_api
?
\axis
	]gamma
^beta
_moving_mean
`moving_variance
#a_self_saveable_object_factories
btrainable_variables
cregularization_losses
d	variables
e	keras_api
w
#f_self_saveable_object_factories
gtrainable_variables
hregularization_losses
i	variables
j	keras_api
w
#k_self_saveable_object_factories
ltrainable_variables
mregularization_losses
n	variables
o	keras_api
?

pkernel
qbias
#r_self_saveable_object_factories
strainable_variables
tregularization_losses
u	variables
v	keras_api
?

wkernel
xbias
#y_self_saveable_object_factories
ztrainable_variables
{regularization_losses
|	variables
}	keras_api
?
~iter

beta_1
?beta_2

?decay
?learning_ratem? m?'m?(m?:m?;m?Bm?Cm?Um?Vm?]m?^m?pm?qm?wm?xm?v? v?'v?(v?:v?;v?Bv?Cv?Uv?Vv?]v?^v?pv?qv?wv?xv?
 
 
 
v
0
 1
'2
(3
:4
;5
B6
C7
U8
V9
]10
^11
p12
q13
w14
x15
 
?
0
 1
'2
(3
)4
*5
:6
;7
B8
C9
D10
E11
U12
V13
]14
^15
_16
`17
p18
q19
w20
x21
?
?non_trainable_variables
?layers
trainable_variables
 ?layer_regularization_losses
regularization_losses
?layer_metrics
?metrics
	variables
 
 
 
 
 
?
?non_trainable_variables
trainable_variables
 ?layer_regularization_losses
?metrics
regularization_losses
?layer_metrics
?layers
	variables
YW
VARIABLE_VALUEdense1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
 1
 

0
 1
?
?non_trainable_variables
"trainable_variables
 ?layer_regularization_losses
?metrics
#regularization_losses
?layer_metrics
?layers
$	variables
 
WU
VARIABLE_VALUEbatch1/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEbatch1/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEbatch1/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUEbatch1/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

'0
(1
 

'0
(1
)2
*3
?
?non_trainable_variables
,trainable_variables
 ?layer_regularization_losses
?metrics
-regularization_losses
?layer_metrics
?layers
.	variables
 
 
 
 
?
?non_trainable_variables
1trainable_variables
 ?layer_regularization_losses
?metrics
2regularization_losses
?layer_metrics
?layers
3	variables
 
 
 
 
?
?non_trainable_variables
6trainable_variables
 ?layer_regularization_losses
?metrics
7regularization_losses
?layer_metrics
?layers
8	variables
YW
VARIABLE_VALUEdense2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

:0
;1
 

:0
;1
?
?non_trainable_variables
=trainable_variables
 ?layer_regularization_losses
?metrics
>regularization_losses
?layer_metrics
?layers
?	variables
 
WU
VARIABLE_VALUEbatch2/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEbatch2/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEbatch2/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUEbatch2/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

B0
C1
 

B0
C1
D2
E3
?
?non_trainable_variables
Gtrainable_variables
 ?layer_regularization_losses
?metrics
Hregularization_losses
?layer_metrics
?layers
I	variables
 
 
 
 
?
?non_trainable_variables
Ltrainable_variables
 ?layer_regularization_losses
?metrics
Mregularization_losses
?layer_metrics
?layers
N	variables
 
 
 
 
?
?non_trainable_variables
Qtrainable_variables
 ?layer_regularization_losses
?metrics
Rregularization_losses
?layer_metrics
?layers
S	variables
YW
VARIABLE_VALUEdense3/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense3/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

U0
V1
 

U0
V1
?
?non_trainable_variables
Xtrainable_variables
 ?layer_regularization_losses
?metrics
Yregularization_losses
?layer_metrics
?layers
Z	variables
 
WU
VARIABLE_VALUEbatch3/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEbatch3/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEbatch3/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUEbatch3/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

]0
^1
 

]0
^1
_2
`3
?
?non_trainable_variables
btrainable_variables
 ?layer_regularization_losses
?metrics
cregularization_losses
?layer_metrics
?layers
d	variables
 
 
 
 
?
?non_trainable_variables
gtrainable_variables
 ?layer_regularization_losses
?metrics
hregularization_losses
?layer_metrics
?layers
i	variables
 
 
 
 
?
?non_trainable_variables
ltrainable_variables
 ?layer_regularization_losses
?metrics
mregularization_losses
?layer_metrics
?layers
n	variables
][
VARIABLE_VALUEpolicy_net/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEpolicy_net/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

p0
q1
 

p0
q1
?
?non_trainable_variables
strainable_variables
 ?layer_regularization_losses
?metrics
tregularization_losses
?layer_metrics
?layers
u	variables
\Z
VARIABLE_VALUEvalue_net/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEvalue_net/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
 

w0
x1
 

w0
x1
?
?non_trainable_variables
ztrainable_variables
 ?layer_regularization_losses
?metrics
{regularization_losses
?layer_metrics
?layers
|	variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
*
)0
*1
D2
E3
_4
`5
v
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
 
 

?0
?1
?2
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

)0
*1
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
 
 
 
 

D0
E1
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
 
 
 
 

_0
`1
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
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
8

?total

?count
?	variables
?	keras_api
8

?total

?count
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
|z
VARIABLE_VALUEAdam/dense1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/batch1/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/batch1/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/batch2/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/batch2/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense3/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense3/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/batch3/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/batch3/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/policy_net/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/policy_net/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/value_net/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/value_net/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/batch1/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/batch1/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/batch2/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/batch2/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense3/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense3/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/batch3/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/batch3/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/policy_net/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/policy_net/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/value_net/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/value_net/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_state_7_4Placeholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_state_7_4dense1/kerneldense1/biasbatch1/moving_variancebatch1/gammabatch1/moving_meanbatch1/betadense2/kerneldense2/biasbatch2/moving_variancebatch2/gammabatch2/moving_meanbatch2/betadense3/kerneldense3/biasbatch3/moving_variancebatch3/gammabatch3/moving_meanbatch3/betavalue_net/kernelvalue_net/biaspolicy_net/kernelpolicy_net/bias*"
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? */
f*R(
&__inference_signature_wrapper_11225360
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!dense1/kernel/Read/ReadVariableOpdense1/bias/Read/ReadVariableOp batch1/gamma/Read/ReadVariableOpbatch1/beta/Read/ReadVariableOp&batch1/moving_mean/Read/ReadVariableOp*batch1/moving_variance/Read/ReadVariableOp!dense2/kernel/Read/ReadVariableOpdense2/bias/Read/ReadVariableOp batch2/gamma/Read/ReadVariableOpbatch2/beta/Read/ReadVariableOp&batch2/moving_mean/Read/ReadVariableOp*batch2/moving_variance/Read/ReadVariableOp!dense3/kernel/Read/ReadVariableOpdense3/bias/Read/ReadVariableOp batch3/gamma/Read/ReadVariableOpbatch3/beta/Read/ReadVariableOp&batch3/moving_mean/Read/ReadVariableOp*batch3/moving_variance/Read/ReadVariableOp%policy_net/kernel/Read/ReadVariableOp#policy_net/bias/Read/ReadVariableOp$value_net/kernel/Read/ReadVariableOp"value_net/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp(Adam/dense1/kernel/m/Read/ReadVariableOp&Adam/dense1/bias/m/Read/ReadVariableOp'Adam/batch1/gamma/m/Read/ReadVariableOp&Adam/batch1/beta/m/Read/ReadVariableOp(Adam/dense2/kernel/m/Read/ReadVariableOp&Adam/dense2/bias/m/Read/ReadVariableOp'Adam/batch2/gamma/m/Read/ReadVariableOp&Adam/batch2/beta/m/Read/ReadVariableOp(Adam/dense3/kernel/m/Read/ReadVariableOp&Adam/dense3/bias/m/Read/ReadVariableOp'Adam/batch3/gamma/m/Read/ReadVariableOp&Adam/batch3/beta/m/Read/ReadVariableOp,Adam/policy_net/kernel/m/Read/ReadVariableOp*Adam/policy_net/bias/m/Read/ReadVariableOp+Adam/value_net/kernel/m/Read/ReadVariableOp)Adam/value_net/bias/m/Read/ReadVariableOp(Adam/dense1/kernel/v/Read/ReadVariableOp&Adam/dense1/bias/v/Read/ReadVariableOp'Adam/batch1/gamma/v/Read/ReadVariableOp&Adam/batch1/beta/v/Read/ReadVariableOp(Adam/dense2/kernel/v/Read/ReadVariableOp&Adam/dense2/bias/v/Read/ReadVariableOp'Adam/batch2/gamma/v/Read/ReadVariableOp&Adam/batch2/beta/v/Read/ReadVariableOp(Adam/dense3/kernel/v/Read/ReadVariableOp&Adam/dense3/bias/v/Read/ReadVariableOp'Adam/batch3/gamma/v/Read/ReadVariableOp&Adam/batch3/beta/v/Read/ReadVariableOp,Adam/policy_net/kernel/v/Read/ReadVariableOp*Adam/policy_net/bias/v/Read/ReadVariableOp+Adam/value_net/kernel/v/Read/ReadVariableOp)Adam/value_net/bias/v/Read/ReadVariableOpConst*N
TinG
E2C	*
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
GPU 2J 8? **
f%R#
!__inference__traced_save_11226389
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense1/kerneldense1/biasbatch1/gammabatch1/betabatch1/moving_meanbatch1/moving_variancedense2/kerneldense2/biasbatch2/gammabatch2/betabatch2/moving_meanbatch2/moving_variancedense3/kerneldense3/biasbatch3/gammabatch3/betabatch3/moving_meanbatch3/moving_variancepolicy_net/kernelpolicy_net/biasvalue_net/kernelvalue_net/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1total_2count_2Adam/dense1/kernel/mAdam/dense1/bias/mAdam/batch1/gamma/mAdam/batch1/beta/mAdam/dense2/kernel/mAdam/dense2/bias/mAdam/batch2/gamma/mAdam/batch2/beta/mAdam/dense3/kernel/mAdam/dense3/bias/mAdam/batch3/gamma/mAdam/batch3/beta/mAdam/policy_net/kernel/mAdam/policy_net/bias/mAdam/value_net/kernel/mAdam/value_net/bias/mAdam/dense1/kernel/vAdam/dense1/bias/vAdam/batch1/gamma/vAdam/batch1/beta/vAdam/dense2/kernel/vAdam/dense2/bias/vAdam/batch2/gamma/vAdam/batch2/beta/vAdam/dense3/kernel/vAdam/dense3/bias/vAdam/batch3/gamma/vAdam/batch3/beta/vAdam/policy_net/kernel/vAdam/policy_net/bias/vAdam/value_net/kernel/vAdam/value_net/bias/v*M
TinF
D2B*
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
GPU 2J 8? *-
f(R&
$__inference__traced_restore_11226594??
?
b
C__inference_drop2_layer_call_and_return_conditional_losses_11225984

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
^
B__inference_act3_layer_call_and_return_conditional_losses_11226098

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:??????????2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
a
C__inference_drop1_layer_call_and_return_conditional_losses_11224648

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?*
?
D__inference_batch2_layer_call_and_return_conditional_losses_11225931

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?0
!batchnorm_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
D__inference_batch2_layer_call_and_return_conditional_losses_11224296

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
D__inference_dense2_layer_call_and_return_conditional_losses_11224660

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddl
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
a
C__inference_drop2_layer_call_and_return_conditional_losses_11225972

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_value_net_layer_call_fn_11226170

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_value_net_layer_call_and_return_conditional_losses_112247392
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
D__inference_batch3_layer_call_and_return_conditional_losses_11226033

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
D__inference_batch1_layer_call_and_return_conditional_losses_11225761

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
G__inference_value_net_layer_call_and_return_conditional_losses_11226161

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Tanhc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
C__inference_drop3_layer_call_and_return_conditional_losses_11226120

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
a
(__inference_drop2_layer_call_fn_11225994

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_drop2_layer_call_and_return_conditional_losses_112248922
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?*
?
D__inference_batch3_layer_call_and_return_conditional_losses_11226067

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?0
!batchnorm_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?*
?
D__inference_batch2_layer_call_and_return_conditional_losses_11224356

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?0
!batchnorm_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?*
?
D__inference_batch3_layer_call_and_return_conditional_losses_11224518

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?0
!batchnorm_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
a
C__inference_drop3_layer_call_and_return_conditional_losses_11224726

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_dense2_layer_call_fn_11225877

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense2_layer_call_and_return_conditional_losses_112246602
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
D__inference_batch1_layer_call_and_return_conditional_losses_11224134

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?}
?
!__inference__traced_save_11226389
file_prefix,
(savev2_dense1_kernel_read_readvariableop*
&savev2_dense1_bias_read_readvariableop+
'savev2_batch1_gamma_read_readvariableop*
&savev2_batch1_beta_read_readvariableop1
-savev2_batch1_moving_mean_read_readvariableop5
1savev2_batch1_moving_variance_read_readvariableop,
(savev2_dense2_kernel_read_readvariableop*
&savev2_dense2_bias_read_readvariableop+
'savev2_batch2_gamma_read_readvariableop*
&savev2_batch2_beta_read_readvariableop1
-savev2_batch2_moving_mean_read_readvariableop5
1savev2_batch2_moving_variance_read_readvariableop,
(savev2_dense3_kernel_read_readvariableop*
&savev2_dense3_bias_read_readvariableop+
'savev2_batch3_gamma_read_readvariableop*
&savev2_batch3_beta_read_readvariableop1
-savev2_batch3_moving_mean_read_readvariableop5
1savev2_batch3_moving_variance_read_readvariableop0
,savev2_policy_net_kernel_read_readvariableop.
*savev2_policy_net_bias_read_readvariableop/
+savev2_value_net_kernel_read_readvariableop-
)savev2_value_net_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop3
/savev2_adam_dense1_kernel_m_read_readvariableop1
-savev2_adam_dense1_bias_m_read_readvariableop2
.savev2_adam_batch1_gamma_m_read_readvariableop1
-savev2_adam_batch1_beta_m_read_readvariableop3
/savev2_adam_dense2_kernel_m_read_readvariableop1
-savev2_adam_dense2_bias_m_read_readvariableop2
.savev2_adam_batch2_gamma_m_read_readvariableop1
-savev2_adam_batch2_beta_m_read_readvariableop3
/savev2_adam_dense3_kernel_m_read_readvariableop1
-savev2_adam_dense3_bias_m_read_readvariableop2
.savev2_adam_batch3_gamma_m_read_readvariableop1
-savev2_adam_batch3_beta_m_read_readvariableop7
3savev2_adam_policy_net_kernel_m_read_readvariableop5
1savev2_adam_policy_net_bias_m_read_readvariableop6
2savev2_adam_value_net_kernel_m_read_readvariableop4
0savev2_adam_value_net_bias_m_read_readvariableop3
/savev2_adam_dense1_kernel_v_read_readvariableop1
-savev2_adam_dense1_bias_v_read_readvariableop2
.savev2_adam_batch1_gamma_v_read_readvariableop1
-savev2_adam_batch1_beta_v_read_readvariableop3
/savev2_adam_dense2_kernel_v_read_readvariableop1
-savev2_adam_dense2_bias_v_read_readvariableop2
.savev2_adam_batch2_gamma_v_read_readvariableop1
-savev2_adam_batch2_beta_v_read_readvariableop3
/savev2_adam_dense3_kernel_v_read_readvariableop1
-savev2_adam_dense3_bias_v_read_readvariableop2
.savev2_adam_batch3_gamma_v_read_readvariableop1
-savev2_adam_batch3_beta_v_read_readvariableop7
3savev2_adam_policy_net_kernel_v_read_readvariableop5
1savev2_adam_policy_net_bias_v_read_readvariableop6
2savev2_adam_value_net_kernel_v_read_readvariableop4
0savev2_adam_value_net_bias_v_read_readvariableop
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
ShardedFilename?$
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:B*
dtype0*?#
value?#B?#BB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:B*
dtype0*?
value?B?BB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_dense1_kernel_read_readvariableop&savev2_dense1_bias_read_readvariableop'savev2_batch1_gamma_read_readvariableop&savev2_batch1_beta_read_readvariableop-savev2_batch1_moving_mean_read_readvariableop1savev2_batch1_moving_variance_read_readvariableop(savev2_dense2_kernel_read_readvariableop&savev2_dense2_bias_read_readvariableop'savev2_batch2_gamma_read_readvariableop&savev2_batch2_beta_read_readvariableop-savev2_batch2_moving_mean_read_readvariableop1savev2_batch2_moving_variance_read_readvariableop(savev2_dense3_kernel_read_readvariableop&savev2_dense3_bias_read_readvariableop'savev2_batch3_gamma_read_readvariableop&savev2_batch3_beta_read_readvariableop-savev2_batch3_moving_mean_read_readvariableop1savev2_batch3_moving_variance_read_readvariableop,savev2_policy_net_kernel_read_readvariableop*savev2_policy_net_bias_read_readvariableop+savev2_value_net_kernel_read_readvariableop)savev2_value_net_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop/savev2_adam_dense1_kernel_m_read_readvariableop-savev2_adam_dense1_bias_m_read_readvariableop.savev2_adam_batch1_gamma_m_read_readvariableop-savev2_adam_batch1_beta_m_read_readvariableop/savev2_adam_dense2_kernel_m_read_readvariableop-savev2_adam_dense2_bias_m_read_readvariableop.savev2_adam_batch2_gamma_m_read_readvariableop-savev2_adam_batch2_beta_m_read_readvariableop/savev2_adam_dense3_kernel_m_read_readvariableop-savev2_adam_dense3_bias_m_read_readvariableop.savev2_adam_batch3_gamma_m_read_readvariableop-savev2_adam_batch3_beta_m_read_readvariableop3savev2_adam_policy_net_kernel_m_read_readvariableop1savev2_adam_policy_net_bias_m_read_readvariableop2savev2_adam_value_net_kernel_m_read_readvariableop0savev2_adam_value_net_bias_m_read_readvariableop/savev2_adam_dense1_kernel_v_read_readvariableop-savev2_adam_dense1_bias_v_read_readvariableop.savev2_adam_batch1_gamma_v_read_readvariableop-savev2_adam_batch1_beta_v_read_readvariableop/savev2_adam_dense2_kernel_v_read_readvariableop-savev2_adam_dense2_bias_v_read_readvariableop.savev2_adam_batch2_gamma_v_read_readvariableop-savev2_adam_batch2_beta_v_read_readvariableop/savev2_adam_dense3_kernel_v_read_readvariableop-savev2_adam_dense3_bias_v_read_readvariableop.savev2_adam_batch3_gamma_v_read_readvariableop-savev2_adam_batch3_beta_v_read_readvariableop3savev2_adam_policy_net_kernel_v_read_readvariableop1savev2_adam_policy_net_bias_v_read_readvariableop2savev2_adam_value_net_kernel_v_read_readvariableop0savev2_adam_value_net_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *P
dtypesF
D2B	2
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

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :	?:?:?:?:?:?:
??:?:?:?:?:?:
??:?:?:?:?:?:	?::	?:: : : : : : : : : : : :	?:?:?:?:
??:?:?:?:
??:?:?:?:	?::	?::	?:?:?:?:
??:?:?:?:
??:?:?:?:	?::	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:!	

_output_shapes	
:?:!


_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :%"!

_output_shapes
:	?:!#

_output_shapes	
:?:!$

_output_shapes	
:?:!%

_output_shapes	
:?:&&"
 
_output_shapes
:
??:!'

_output_shapes	
:?:!(

_output_shapes	
:?:!)

_output_shapes	
:?:&*"
 
_output_shapes
:
??:!+

_output_shapes	
:?:!,

_output_shapes	
:?:!-

_output_shapes	
:?:%.!

_output_shapes
:	?: /

_output_shapes
::%0!

_output_shapes
:	?: 1

_output_shapes
::%2!

_output_shapes
:	?:!3

_output_shapes	
:?:!4

_output_shapes	
:?:!5

_output_shapes	
:?:&6"
 
_output_shapes
:
??:!7

_output_shapes	
:?:!8

_output_shapes	
:?:!9

_output_shapes	
:?:&:"
 
_output_shapes
:
??:!;

_output_shapes	
:?:!<

_output_shapes	
:?:!=

_output_shapes	
:?:%>!

_output_shapes
:	?: ?

_output_shapes
::%@!

_output_shapes
:	?: A

_output_shapes
::B

_output_shapes
: 
?x
?
G__inference_noConv7x4_layer_call_and_return_conditional_losses_11225453

inputs8
%dense1_matmul_readvariableop_resource:	?5
&dense1_biasadd_readvariableop_resource:	?7
(batch1_batchnorm_readvariableop_resource:	?;
,batch1_batchnorm_mul_readvariableop_resource:	?9
*batch1_batchnorm_readvariableop_1_resource:	?9
*batch1_batchnorm_readvariableop_2_resource:	?9
%dense2_matmul_readvariableop_resource:
??5
&dense2_biasadd_readvariableop_resource:	?7
(batch2_batchnorm_readvariableop_resource:	?;
,batch2_batchnorm_mul_readvariableop_resource:	?9
*batch2_batchnorm_readvariableop_1_resource:	?9
*batch2_batchnorm_readvariableop_2_resource:	?9
%dense3_matmul_readvariableop_resource:
??5
&dense3_biasadd_readvariableop_resource:	?7
(batch3_batchnorm_readvariableop_resource:	?;
,batch3_batchnorm_mul_readvariableop_resource:	?9
*batch3_batchnorm_readvariableop_1_resource:	?9
*batch3_batchnorm_readvariableop_2_resource:	?;
(value_net_matmul_readvariableop_resource:	?7
)value_net_biasadd_readvariableop_resource:<
)policy_net_matmul_readvariableop_resource:	?8
*policy_net_biasadd_readvariableop_resource:
identity

identity_1??batch1/batchnorm/ReadVariableOp?!batch1/batchnorm/ReadVariableOp_1?!batch1/batchnorm/ReadVariableOp_2?#batch1/batchnorm/mul/ReadVariableOp?batch2/batchnorm/ReadVariableOp?!batch2/batchnorm/ReadVariableOp_1?!batch2/batchnorm/ReadVariableOp_2?#batch2/batchnorm/mul/ReadVariableOp?batch3/batchnorm/ReadVariableOp?!batch3/batchnorm/ReadVariableOp_1?!batch3/batchnorm/ReadVariableOp_2?#batch3/batchnorm/mul/ReadVariableOp?dense1/BiasAdd/ReadVariableOp?dense1/MatMul/ReadVariableOp?dense2/BiasAdd/ReadVariableOp?dense2/MatMul/ReadVariableOp?dense3/BiasAdd/ReadVariableOp?dense3/MatMul/ReadVariableOp?!policy_net/BiasAdd/ReadVariableOp? policy_net/MatMul/ReadVariableOp? value_net/BiasAdd/ReadVariableOp?value_net/MatMul/ReadVariableOpo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten/Const
flatten/ReshapeReshapeinputsflatten/Const:output:0*
T0*'
_output_shapes
:?????????2
flatten/Reshape?
dense1/MatMul/ReadVariableOpReadVariableOp%dense1_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense1/MatMul/ReadVariableOp?
dense1/MatMulMatMulflatten/Reshape:output:0$dense1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense1/MatMul?
dense1/BiasAdd/ReadVariableOpReadVariableOp&dense1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense1/BiasAdd/ReadVariableOp?
dense1/BiasAddBiasAdddense1/MatMul:product:0%dense1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense1/BiasAdd?
batch1/batchnorm/ReadVariableOpReadVariableOp(batch1_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02!
batch1/batchnorm/ReadVariableOpu
batch1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batch1/batchnorm/add/y?
batch1/batchnorm/addAddV2'batch1/batchnorm/ReadVariableOp:value:0batch1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batch1/batchnorm/addy
batch1/batchnorm/RsqrtRsqrtbatch1/batchnorm/add:z:0*
T0*
_output_shapes	
:?2
batch1/batchnorm/Rsqrt?
#batch1/batchnorm/mul/ReadVariableOpReadVariableOp,batch1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#batch1/batchnorm/mul/ReadVariableOp?
batch1/batchnorm/mulMulbatch1/batchnorm/Rsqrt:y:0+batch1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batch1/batchnorm/mul?
batch1/batchnorm/mul_1Muldense1/BiasAdd:output:0batch1/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batch1/batchnorm/mul_1?
!batch1/batchnorm/ReadVariableOp_1ReadVariableOp*batch1_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!batch1/batchnorm/ReadVariableOp_1?
batch1/batchnorm/mul_2Mul)batch1/batchnorm/ReadVariableOp_1:value:0batch1/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batch1/batchnorm/mul_2?
!batch1/batchnorm/ReadVariableOp_2ReadVariableOp*batch1_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02#
!batch1/batchnorm/ReadVariableOp_2?
batch1/batchnorm/subSub)batch1/batchnorm/ReadVariableOp_2:value:0batch1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batch1/batchnorm/sub?
batch1/batchnorm/add_1AddV2batch1/batchnorm/mul_1:z:0batch1/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batch1/batchnorm/add_1m
	act1/ReluRelubatch1/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2
	act1/Relux
drop1/IdentityIdentityact1/Relu:activations:0*
T0*(
_output_shapes
:??????????2
drop1/Identity?
dense2/MatMul/ReadVariableOpReadVariableOp%dense2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense2/MatMul/ReadVariableOp?
dense2/MatMulMatMuldrop1/Identity:output:0$dense2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense2/MatMul?
dense2/BiasAdd/ReadVariableOpReadVariableOp&dense2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense2/BiasAdd/ReadVariableOp?
dense2/BiasAddBiasAdddense2/MatMul:product:0%dense2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense2/BiasAdd?
batch2/batchnorm/ReadVariableOpReadVariableOp(batch2_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02!
batch2/batchnorm/ReadVariableOpu
batch2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batch2/batchnorm/add/y?
batch2/batchnorm/addAddV2'batch2/batchnorm/ReadVariableOp:value:0batch2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batch2/batchnorm/addy
batch2/batchnorm/RsqrtRsqrtbatch2/batchnorm/add:z:0*
T0*
_output_shapes	
:?2
batch2/batchnorm/Rsqrt?
#batch2/batchnorm/mul/ReadVariableOpReadVariableOp,batch2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#batch2/batchnorm/mul/ReadVariableOp?
batch2/batchnorm/mulMulbatch2/batchnorm/Rsqrt:y:0+batch2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batch2/batchnorm/mul?
batch2/batchnorm/mul_1Muldense2/BiasAdd:output:0batch2/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batch2/batchnorm/mul_1?
!batch2/batchnorm/ReadVariableOp_1ReadVariableOp*batch2_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!batch2/batchnorm/ReadVariableOp_1?
batch2/batchnorm/mul_2Mul)batch2/batchnorm/ReadVariableOp_1:value:0batch2/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batch2/batchnorm/mul_2?
!batch2/batchnorm/ReadVariableOp_2ReadVariableOp*batch2_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02#
!batch2/batchnorm/ReadVariableOp_2?
batch2/batchnorm/subSub)batch2/batchnorm/ReadVariableOp_2:value:0batch2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batch2/batchnorm/sub?
batch2/batchnorm/add_1AddV2batch2/batchnorm/mul_1:z:0batch2/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batch2/batchnorm/add_1m
	act2/ReluRelubatch2/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2
	act2/Relux
drop2/IdentityIdentityact2/Relu:activations:0*
T0*(
_output_shapes
:??????????2
drop2/Identity?
dense3/MatMul/ReadVariableOpReadVariableOp%dense3_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense3/MatMul/ReadVariableOp?
dense3/MatMulMatMuldrop2/Identity:output:0$dense3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense3/MatMul?
dense3/BiasAdd/ReadVariableOpReadVariableOp&dense3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense3/BiasAdd/ReadVariableOp?
dense3/BiasAddBiasAdddense3/MatMul:product:0%dense3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense3/BiasAdd?
batch3/batchnorm/ReadVariableOpReadVariableOp(batch3_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02!
batch3/batchnorm/ReadVariableOpu
batch3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batch3/batchnorm/add/y?
batch3/batchnorm/addAddV2'batch3/batchnorm/ReadVariableOp:value:0batch3/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batch3/batchnorm/addy
batch3/batchnorm/RsqrtRsqrtbatch3/batchnorm/add:z:0*
T0*
_output_shapes	
:?2
batch3/batchnorm/Rsqrt?
#batch3/batchnorm/mul/ReadVariableOpReadVariableOp,batch3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#batch3/batchnorm/mul/ReadVariableOp?
batch3/batchnorm/mulMulbatch3/batchnorm/Rsqrt:y:0+batch3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batch3/batchnorm/mul?
batch3/batchnorm/mul_1Muldense3/BiasAdd:output:0batch3/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batch3/batchnorm/mul_1?
!batch3/batchnorm/ReadVariableOp_1ReadVariableOp*batch3_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!batch3/batchnorm/ReadVariableOp_1?
batch3/batchnorm/mul_2Mul)batch3/batchnorm/ReadVariableOp_1:value:0batch3/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batch3/batchnorm/mul_2?
!batch3/batchnorm/ReadVariableOp_2ReadVariableOp*batch3_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02#
!batch3/batchnorm/ReadVariableOp_2?
batch3/batchnorm/subSub)batch3/batchnorm/ReadVariableOp_2:value:0batch3/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batch3/batchnorm/sub?
batch3/batchnorm/add_1AddV2batch3/batchnorm/mul_1:z:0batch3/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batch3/batchnorm/add_1m
	act3/ReluRelubatch3/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2
	act3/Relux
drop3/IdentityIdentityact3/Relu:activations:0*
T0*(
_output_shapes
:??????????2
drop3/Identity?
value_net/MatMul/ReadVariableOpReadVariableOp(value_net_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02!
value_net/MatMul/ReadVariableOp?
value_net/MatMulMatMuldrop3/Identity:output:0'value_net/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
value_net/MatMul?
 value_net/BiasAdd/ReadVariableOpReadVariableOp)value_net_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 value_net/BiasAdd/ReadVariableOp?
value_net/BiasAddBiasAddvalue_net/MatMul:product:0(value_net/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
value_net/BiasAddv
value_net/TanhTanhvalue_net/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
value_net/Tanh?
 policy_net/MatMul/ReadVariableOpReadVariableOp)policy_net_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02"
 policy_net/MatMul/ReadVariableOp?
policy_net/MatMulMatMuldrop3/Identity:output:0(policy_net/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
policy_net/MatMul?
!policy_net/BiasAdd/ReadVariableOpReadVariableOp*policy_net_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!policy_net/BiasAdd/ReadVariableOp?
policy_net/BiasAddBiasAddpolicy_net/MatMul:product:0)policy_net/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
policy_net/BiasAdd?
policy_net/SoftmaxSoftmaxpolicy_net/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
policy_net/Softmaxw
IdentityIdentitypolicy_net/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityq

Identity_1Identityvalue_net/Tanh:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1?
NoOpNoOp ^batch1/batchnorm/ReadVariableOp"^batch1/batchnorm/ReadVariableOp_1"^batch1/batchnorm/ReadVariableOp_2$^batch1/batchnorm/mul/ReadVariableOp ^batch2/batchnorm/ReadVariableOp"^batch2/batchnorm/ReadVariableOp_1"^batch2/batchnorm/ReadVariableOp_2$^batch2/batchnorm/mul/ReadVariableOp ^batch3/batchnorm/ReadVariableOp"^batch3/batchnorm/ReadVariableOp_1"^batch3/batchnorm/ReadVariableOp_2$^batch3/batchnorm/mul/ReadVariableOp^dense1/BiasAdd/ReadVariableOp^dense1/MatMul/ReadVariableOp^dense2/BiasAdd/ReadVariableOp^dense2/MatMul/ReadVariableOp^dense3/BiasAdd/ReadVariableOp^dense3/MatMul/ReadVariableOp"^policy_net/BiasAdd/ReadVariableOp!^policy_net/MatMul/ReadVariableOp!^value_net/BiasAdd/ReadVariableOp ^value_net/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : : : 2B
batch1/batchnorm/ReadVariableOpbatch1/batchnorm/ReadVariableOp2F
!batch1/batchnorm/ReadVariableOp_1!batch1/batchnorm/ReadVariableOp_12F
!batch1/batchnorm/ReadVariableOp_2!batch1/batchnorm/ReadVariableOp_22J
#batch1/batchnorm/mul/ReadVariableOp#batch1/batchnorm/mul/ReadVariableOp2B
batch2/batchnorm/ReadVariableOpbatch2/batchnorm/ReadVariableOp2F
!batch2/batchnorm/ReadVariableOp_1!batch2/batchnorm/ReadVariableOp_12F
!batch2/batchnorm/ReadVariableOp_2!batch2/batchnorm/ReadVariableOp_22J
#batch2/batchnorm/mul/ReadVariableOp#batch2/batchnorm/mul/ReadVariableOp2B
batch3/batchnorm/ReadVariableOpbatch3/batchnorm/ReadVariableOp2F
!batch3/batchnorm/ReadVariableOp_1!batch3/batchnorm/ReadVariableOp_12F
!batch3/batchnorm/ReadVariableOp_2!batch3/batchnorm/ReadVariableOp_22J
#batch3/batchnorm/mul/ReadVariableOp#batch3/batchnorm/mul/ReadVariableOp2>
dense1/BiasAdd/ReadVariableOpdense1/BiasAdd/ReadVariableOp2<
dense1/MatMul/ReadVariableOpdense1/MatMul/ReadVariableOp2>
dense2/BiasAdd/ReadVariableOpdense2/BiasAdd/ReadVariableOp2<
dense2/MatMul/ReadVariableOpdense2/MatMul/ReadVariableOp2>
dense3/BiasAdd/ReadVariableOpdense3/BiasAdd/ReadVariableOp2<
dense3/MatMul/ReadVariableOpdense3/MatMul/ReadVariableOp2F
!policy_net/BiasAdd/ReadVariableOp!policy_net/BiasAdd/ReadVariableOp2D
 policy_net/MatMul/ReadVariableOp policy_net/MatMul/ReadVariableOp2D
 value_net/BiasAdd/ReadVariableOp value_net/BiasAdd/ReadVariableOp2B
value_net/MatMul/ReadVariableOpvalue_net/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
b
C__inference_drop2_layer_call_and_return_conditional_losses_11224892

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
a
(__inference_drop1_layer_call_fn_11225858

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_drop1_layer_call_and_return_conditional_losses_112249312
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?D
?
G__inference_noConv7x4_layer_call_and_return_conditional_losses_11224764

inputs"
dense1_11224622:	?
dense1_11224624:	?
batch1_11224627:	?
batch1_11224629:	?
batch1_11224631:	?
batch1_11224633:	?#
dense2_11224661:
??
dense2_11224663:	?
batch2_11224666:	?
batch2_11224668:	?
batch2_11224670:	?
batch2_11224672:	?#
dense3_11224700:
??
dense3_11224702:	?
batch3_11224705:	?
batch3_11224707:	?
batch3_11224709:	?
batch3_11224711:	?%
value_net_11224740:	? 
value_net_11224742:&
policy_net_11224757:	?!
policy_net_11224759:
identity

identity_1??batch1/StatefulPartitionedCall?batch2/StatefulPartitionedCall?batch3/StatefulPartitionedCall?dense1/StatefulPartitionedCall?dense2/StatefulPartitionedCall?dense3/StatefulPartitionedCall?"policy_net/StatefulPartitionedCall?!value_net/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_112246092
flatten/PartitionedCall?
dense1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense1_11224622dense1_11224624*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense1_layer_call_and_return_conditional_losses_112246212 
dense1/StatefulPartitionedCall?
batch1/StatefulPartitionedCallStatefulPartitionedCall'dense1/StatefulPartitionedCall:output:0batch1_11224627batch1_11224629batch1_11224631batch1_11224633*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_batch1_layer_call_and_return_conditional_losses_112241342 
batch1/StatefulPartitionedCall?
act1/PartitionedCallPartitionedCall'batch1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_act1_layer_call_and_return_conditional_losses_112246412
act1/PartitionedCall?
drop1/PartitionedCallPartitionedCallact1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_drop1_layer_call_and_return_conditional_losses_112246482
drop1/PartitionedCall?
dense2/StatefulPartitionedCallStatefulPartitionedCalldrop1/PartitionedCall:output:0dense2_11224661dense2_11224663*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense2_layer_call_and_return_conditional_losses_112246602 
dense2/StatefulPartitionedCall?
batch2/StatefulPartitionedCallStatefulPartitionedCall'dense2/StatefulPartitionedCall:output:0batch2_11224666batch2_11224668batch2_11224670batch2_11224672*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_batch2_layer_call_and_return_conditional_losses_112242962 
batch2/StatefulPartitionedCall?
act2/PartitionedCallPartitionedCall'batch2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_act2_layer_call_and_return_conditional_losses_112246802
act2/PartitionedCall?
drop2/PartitionedCallPartitionedCallact2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_drop2_layer_call_and_return_conditional_losses_112246872
drop2/PartitionedCall?
dense3/StatefulPartitionedCallStatefulPartitionedCalldrop2/PartitionedCall:output:0dense3_11224700dense3_11224702*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense3_layer_call_and_return_conditional_losses_112246992 
dense3/StatefulPartitionedCall?
batch3/StatefulPartitionedCallStatefulPartitionedCall'dense3/StatefulPartitionedCall:output:0batch3_11224705batch3_11224707batch3_11224709batch3_11224711*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_batch3_layer_call_and_return_conditional_losses_112244582 
batch3/StatefulPartitionedCall?
act3/PartitionedCallPartitionedCall'batch3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_act3_layer_call_and_return_conditional_losses_112247192
act3/PartitionedCall?
drop3/PartitionedCallPartitionedCallact3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_drop3_layer_call_and_return_conditional_losses_112247262
drop3/PartitionedCall?
!value_net/StatefulPartitionedCallStatefulPartitionedCalldrop3/PartitionedCall:output:0value_net_11224740value_net_11224742*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_value_net_layer_call_and_return_conditional_losses_112247392#
!value_net/StatefulPartitionedCall?
"policy_net/StatefulPartitionedCallStatefulPartitionedCalldrop3/PartitionedCall:output:0policy_net_11224757policy_net_11224759*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_policy_net_layer_call_and_return_conditional_losses_112247562$
"policy_net/StatefulPartitionedCall?
IdentityIdentity+policy_net/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity*value_net/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1?
NoOpNoOp^batch1/StatefulPartitionedCall^batch2/StatefulPartitionedCall^batch3/StatefulPartitionedCall^dense1/StatefulPartitionedCall^dense2/StatefulPartitionedCall^dense3/StatefulPartitionedCall#^policy_net/StatefulPartitionedCall"^value_net/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : : : 2@
batch1/StatefulPartitionedCallbatch1/StatefulPartitionedCall2@
batch2/StatefulPartitionedCallbatch2/StatefulPartitionedCall2@
batch3/StatefulPartitionedCallbatch3/StatefulPartitionedCall2@
dense1/StatefulPartitionedCalldense1/StatefulPartitionedCall2@
dense2/StatefulPartitionedCalldense2/StatefulPartitionedCall2@
dense3/StatefulPartitionedCalldense3/StatefulPartitionedCall2H
"policy_net/StatefulPartitionedCall"policy_net/StatefulPartitionedCall2F
!value_net/StatefulPartitionedCall!value_net/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
b
C__inference_drop1_layer_call_and_return_conditional_losses_11225848

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
C__inference_drop1_layer_call_and_return_conditional_losses_11224931

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_batch3_layer_call_fn_11226080

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_batch3_layer_call_and_return_conditional_losses_112244582
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
D__inference_dense2_layer_call_and_return_conditional_losses_11225868

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddl
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
G__inference_noConv7x4_layer_call_and_return_conditional_losses_11225609

inputs8
%dense1_matmul_readvariableop_resource:	?5
&dense1_biasadd_readvariableop_resource:	?=
.batch1_assignmovingavg_readvariableop_resource:	??
0batch1_assignmovingavg_1_readvariableop_resource:	?;
,batch1_batchnorm_mul_readvariableop_resource:	?7
(batch1_batchnorm_readvariableop_resource:	?9
%dense2_matmul_readvariableop_resource:
??5
&dense2_biasadd_readvariableop_resource:	?=
.batch2_assignmovingavg_readvariableop_resource:	??
0batch2_assignmovingavg_1_readvariableop_resource:	?;
,batch2_batchnorm_mul_readvariableop_resource:	?7
(batch2_batchnorm_readvariableop_resource:	?9
%dense3_matmul_readvariableop_resource:
??5
&dense3_biasadd_readvariableop_resource:	?=
.batch3_assignmovingavg_readvariableop_resource:	??
0batch3_assignmovingavg_1_readvariableop_resource:	?;
,batch3_batchnorm_mul_readvariableop_resource:	?7
(batch3_batchnorm_readvariableop_resource:	?;
(value_net_matmul_readvariableop_resource:	?7
)value_net_biasadd_readvariableop_resource:<
)policy_net_matmul_readvariableop_resource:	?8
*policy_net_biasadd_readvariableop_resource:
identity

identity_1??batch1/AssignMovingAvg?%batch1/AssignMovingAvg/ReadVariableOp?batch1/AssignMovingAvg_1?'batch1/AssignMovingAvg_1/ReadVariableOp?batch1/batchnorm/ReadVariableOp?#batch1/batchnorm/mul/ReadVariableOp?batch2/AssignMovingAvg?%batch2/AssignMovingAvg/ReadVariableOp?batch2/AssignMovingAvg_1?'batch2/AssignMovingAvg_1/ReadVariableOp?batch2/batchnorm/ReadVariableOp?#batch2/batchnorm/mul/ReadVariableOp?batch3/AssignMovingAvg?%batch3/AssignMovingAvg/ReadVariableOp?batch3/AssignMovingAvg_1?'batch3/AssignMovingAvg_1/ReadVariableOp?batch3/batchnorm/ReadVariableOp?#batch3/batchnorm/mul/ReadVariableOp?dense1/BiasAdd/ReadVariableOp?dense1/MatMul/ReadVariableOp?dense2/BiasAdd/ReadVariableOp?dense2/MatMul/ReadVariableOp?dense3/BiasAdd/ReadVariableOp?dense3/MatMul/ReadVariableOp?!policy_net/BiasAdd/ReadVariableOp? policy_net/MatMul/ReadVariableOp? value_net/BiasAdd/ReadVariableOp?value_net/MatMul/ReadVariableOpo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten/Const
flatten/ReshapeReshapeinputsflatten/Const:output:0*
T0*'
_output_shapes
:?????????2
flatten/Reshape?
dense1/MatMul/ReadVariableOpReadVariableOp%dense1_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense1/MatMul/ReadVariableOp?
dense1/MatMulMatMulflatten/Reshape:output:0$dense1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense1/MatMul?
dense1/BiasAdd/ReadVariableOpReadVariableOp&dense1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense1/BiasAdd/ReadVariableOp?
dense1/BiasAddBiasAdddense1/MatMul:product:0%dense1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense1/BiasAdd?
%batch1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2'
%batch1/moments/mean/reduction_indices?
batch1/moments/meanMeandense1/BiasAdd:output:0.batch1/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
batch1/moments/mean?
batch1/moments/StopGradientStopGradientbatch1/moments/mean:output:0*
T0*
_output_shapes
:	?2
batch1/moments/StopGradient?
 batch1/moments/SquaredDifferenceSquaredDifferencedense1/BiasAdd:output:0$batch1/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2"
 batch1/moments/SquaredDifference?
)batch1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2+
)batch1/moments/variance/reduction_indices?
batch1/moments/varianceMean$batch1/moments/SquaredDifference:z:02batch1/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
batch1/moments/variance?
batch1/moments/SqueezeSqueezebatch1/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
batch1/moments/Squeeze?
batch1/moments/Squeeze_1Squeeze batch1/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
batch1/moments/Squeeze_1?
batch1/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
batch1/AssignMovingAvg/decay?
%batch1/AssignMovingAvg/ReadVariableOpReadVariableOp.batch1_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%batch1/AssignMovingAvg/ReadVariableOp?
batch1/AssignMovingAvg/subSub-batch1/AssignMovingAvg/ReadVariableOp:value:0batch1/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
batch1/AssignMovingAvg/sub?
batch1/AssignMovingAvg/mulMulbatch1/AssignMovingAvg/sub:z:0%batch1/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
batch1/AssignMovingAvg/mul?
batch1/AssignMovingAvgAssignSubVariableOp.batch1_assignmovingavg_readvariableop_resourcebatch1/AssignMovingAvg/mul:z:0&^batch1/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
batch1/AssignMovingAvg?
batch1/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2 
batch1/AssignMovingAvg_1/decay?
'batch1/AssignMovingAvg_1/ReadVariableOpReadVariableOp0batch1_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'batch1/AssignMovingAvg_1/ReadVariableOp?
batch1/AssignMovingAvg_1/subSub/batch1/AssignMovingAvg_1/ReadVariableOp:value:0!batch1/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
batch1/AssignMovingAvg_1/sub?
batch1/AssignMovingAvg_1/mulMul batch1/AssignMovingAvg_1/sub:z:0'batch1/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
batch1/AssignMovingAvg_1/mul?
batch1/AssignMovingAvg_1AssignSubVariableOp0batch1_assignmovingavg_1_readvariableop_resource batch1/AssignMovingAvg_1/mul:z:0(^batch1/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
batch1/AssignMovingAvg_1u
batch1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batch1/batchnorm/add/y?
batch1/batchnorm/addAddV2!batch1/moments/Squeeze_1:output:0batch1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batch1/batchnorm/addy
batch1/batchnorm/RsqrtRsqrtbatch1/batchnorm/add:z:0*
T0*
_output_shapes	
:?2
batch1/batchnorm/Rsqrt?
#batch1/batchnorm/mul/ReadVariableOpReadVariableOp,batch1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#batch1/batchnorm/mul/ReadVariableOp?
batch1/batchnorm/mulMulbatch1/batchnorm/Rsqrt:y:0+batch1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batch1/batchnorm/mul?
batch1/batchnorm/mul_1Muldense1/BiasAdd:output:0batch1/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batch1/batchnorm/mul_1?
batch1/batchnorm/mul_2Mulbatch1/moments/Squeeze:output:0batch1/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batch1/batchnorm/mul_2?
batch1/batchnorm/ReadVariableOpReadVariableOp(batch1_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02!
batch1/batchnorm/ReadVariableOp?
batch1/batchnorm/subSub'batch1/batchnorm/ReadVariableOp:value:0batch1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batch1/batchnorm/sub?
batch1/batchnorm/add_1AddV2batch1/batchnorm/mul_1:z:0batch1/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batch1/batchnorm/add_1m
	act1/ReluRelubatch1/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2
	act1/Reluo
drop1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
drop1/dropout/Const?
drop1/dropout/MulMulact1/Relu:activations:0drop1/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
drop1/dropout/Mulq
drop1/dropout/ShapeShapeact1/Relu:activations:0*
T0*
_output_shapes
:2
drop1/dropout/Shape?
*drop1/dropout/random_uniform/RandomUniformRandomUniformdrop1/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02,
*drop1/dropout/random_uniform/RandomUniform?
drop1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
drop1/dropout/GreaterEqual/y?
drop1/dropout/GreaterEqualGreaterEqual3drop1/dropout/random_uniform/RandomUniform:output:0%drop1/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
drop1/dropout/GreaterEqual?
drop1/dropout/CastCastdrop1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
drop1/dropout/Cast?
drop1/dropout/Mul_1Muldrop1/dropout/Mul:z:0drop1/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
drop1/dropout/Mul_1?
dense2/MatMul/ReadVariableOpReadVariableOp%dense2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense2/MatMul/ReadVariableOp?
dense2/MatMulMatMuldrop1/dropout/Mul_1:z:0$dense2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense2/MatMul?
dense2/BiasAdd/ReadVariableOpReadVariableOp&dense2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense2/BiasAdd/ReadVariableOp?
dense2/BiasAddBiasAdddense2/MatMul:product:0%dense2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense2/BiasAdd?
%batch2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2'
%batch2/moments/mean/reduction_indices?
batch2/moments/meanMeandense2/BiasAdd:output:0.batch2/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
batch2/moments/mean?
batch2/moments/StopGradientStopGradientbatch2/moments/mean:output:0*
T0*
_output_shapes
:	?2
batch2/moments/StopGradient?
 batch2/moments/SquaredDifferenceSquaredDifferencedense2/BiasAdd:output:0$batch2/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2"
 batch2/moments/SquaredDifference?
)batch2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2+
)batch2/moments/variance/reduction_indices?
batch2/moments/varianceMean$batch2/moments/SquaredDifference:z:02batch2/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
batch2/moments/variance?
batch2/moments/SqueezeSqueezebatch2/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
batch2/moments/Squeeze?
batch2/moments/Squeeze_1Squeeze batch2/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
batch2/moments/Squeeze_1?
batch2/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
batch2/AssignMovingAvg/decay?
%batch2/AssignMovingAvg/ReadVariableOpReadVariableOp.batch2_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%batch2/AssignMovingAvg/ReadVariableOp?
batch2/AssignMovingAvg/subSub-batch2/AssignMovingAvg/ReadVariableOp:value:0batch2/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
batch2/AssignMovingAvg/sub?
batch2/AssignMovingAvg/mulMulbatch2/AssignMovingAvg/sub:z:0%batch2/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
batch2/AssignMovingAvg/mul?
batch2/AssignMovingAvgAssignSubVariableOp.batch2_assignmovingavg_readvariableop_resourcebatch2/AssignMovingAvg/mul:z:0&^batch2/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
batch2/AssignMovingAvg?
batch2/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2 
batch2/AssignMovingAvg_1/decay?
'batch2/AssignMovingAvg_1/ReadVariableOpReadVariableOp0batch2_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'batch2/AssignMovingAvg_1/ReadVariableOp?
batch2/AssignMovingAvg_1/subSub/batch2/AssignMovingAvg_1/ReadVariableOp:value:0!batch2/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
batch2/AssignMovingAvg_1/sub?
batch2/AssignMovingAvg_1/mulMul batch2/AssignMovingAvg_1/sub:z:0'batch2/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
batch2/AssignMovingAvg_1/mul?
batch2/AssignMovingAvg_1AssignSubVariableOp0batch2_assignmovingavg_1_readvariableop_resource batch2/AssignMovingAvg_1/mul:z:0(^batch2/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
batch2/AssignMovingAvg_1u
batch2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batch2/batchnorm/add/y?
batch2/batchnorm/addAddV2!batch2/moments/Squeeze_1:output:0batch2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batch2/batchnorm/addy
batch2/batchnorm/RsqrtRsqrtbatch2/batchnorm/add:z:0*
T0*
_output_shapes	
:?2
batch2/batchnorm/Rsqrt?
#batch2/batchnorm/mul/ReadVariableOpReadVariableOp,batch2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#batch2/batchnorm/mul/ReadVariableOp?
batch2/batchnorm/mulMulbatch2/batchnorm/Rsqrt:y:0+batch2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batch2/batchnorm/mul?
batch2/batchnorm/mul_1Muldense2/BiasAdd:output:0batch2/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batch2/batchnorm/mul_1?
batch2/batchnorm/mul_2Mulbatch2/moments/Squeeze:output:0batch2/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batch2/batchnorm/mul_2?
batch2/batchnorm/ReadVariableOpReadVariableOp(batch2_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02!
batch2/batchnorm/ReadVariableOp?
batch2/batchnorm/subSub'batch2/batchnorm/ReadVariableOp:value:0batch2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batch2/batchnorm/sub?
batch2/batchnorm/add_1AddV2batch2/batchnorm/mul_1:z:0batch2/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batch2/batchnorm/add_1m
	act2/ReluRelubatch2/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2
	act2/Reluo
drop2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
drop2/dropout/Const?
drop2/dropout/MulMulact2/Relu:activations:0drop2/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
drop2/dropout/Mulq
drop2/dropout/ShapeShapeact2/Relu:activations:0*
T0*
_output_shapes
:2
drop2/dropout/Shape?
*drop2/dropout/random_uniform/RandomUniformRandomUniformdrop2/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02,
*drop2/dropout/random_uniform/RandomUniform?
drop2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
drop2/dropout/GreaterEqual/y?
drop2/dropout/GreaterEqualGreaterEqual3drop2/dropout/random_uniform/RandomUniform:output:0%drop2/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
drop2/dropout/GreaterEqual?
drop2/dropout/CastCastdrop2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
drop2/dropout/Cast?
drop2/dropout/Mul_1Muldrop2/dropout/Mul:z:0drop2/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
drop2/dropout/Mul_1?
dense3/MatMul/ReadVariableOpReadVariableOp%dense3_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense3/MatMul/ReadVariableOp?
dense3/MatMulMatMuldrop2/dropout/Mul_1:z:0$dense3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense3/MatMul?
dense3/BiasAdd/ReadVariableOpReadVariableOp&dense3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense3/BiasAdd/ReadVariableOp?
dense3/BiasAddBiasAdddense3/MatMul:product:0%dense3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense3/BiasAdd?
%batch3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2'
%batch3/moments/mean/reduction_indices?
batch3/moments/meanMeandense3/BiasAdd:output:0.batch3/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
batch3/moments/mean?
batch3/moments/StopGradientStopGradientbatch3/moments/mean:output:0*
T0*
_output_shapes
:	?2
batch3/moments/StopGradient?
 batch3/moments/SquaredDifferenceSquaredDifferencedense3/BiasAdd:output:0$batch3/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2"
 batch3/moments/SquaredDifference?
)batch3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2+
)batch3/moments/variance/reduction_indices?
batch3/moments/varianceMean$batch3/moments/SquaredDifference:z:02batch3/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
batch3/moments/variance?
batch3/moments/SqueezeSqueezebatch3/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
batch3/moments/Squeeze?
batch3/moments/Squeeze_1Squeeze batch3/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
batch3/moments/Squeeze_1?
batch3/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
batch3/AssignMovingAvg/decay?
%batch3/AssignMovingAvg/ReadVariableOpReadVariableOp.batch3_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%batch3/AssignMovingAvg/ReadVariableOp?
batch3/AssignMovingAvg/subSub-batch3/AssignMovingAvg/ReadVariableOp:value:0batch3/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
batch3/AssignMovingAvg/sub?
batch3/AssignMovingAvg/mulMulbatch3/AssignMovingAvg/sub:z:0%batch3/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
batch3/AssignMovingAvg/mul?
batch3/AssignMovingAvgAssignSubVariableOp.batch3_assignmovingavg_readvariableop_resourcebatch3/AssignMovingAvg/mul:z:0&^batch3/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
batch3/AssignMovingAvg?
batch3/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2 
batch3/AssignMovingAvg_1/decay?
'batch3/AssignMovingAvg_1/ReadVariableOpReadVariableOp0batch3_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'batch3/AssignMovingAvg_1/ReadVariableOp?
batch3/AssignMovingAvg_1/subSub/batch3/AssignMovingAvg_1/ReadVariableOp:value:0!batch3/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
batch3/AssignMovingAvg_1/sub?
batch3/AssignMovingAvg_1/mulMul batch3/AssignMovingAvg_1/sub:z:0'batch3/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
batch3/AssignMovingAvg_1/mul?
batch3/AssignMovingAvg_1AssignSubVariableOp0batch3_assignmovingavg_1_readvariableop_resource batch3/AssignMovingAvg_1/mul:z:0(^batch3/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
batch3/AssignMovingAvg_1u
batch3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batch3/batchnorm/add/y?
batch3/batchnorm/addAddV2!batch3/moments/Squeeze_1:output:0batch3/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batch3/batchnorm/addy
batch3/batchnorm/RsqrtRsqrtbatch3/batchnorm/add:z:0*
T0*
_output_shapes	
:?2
batch3/batchnorm/Rsqrt?
#batch3/batchnorm/mul/ReadVariableOpReadVariableOp,batch3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#batch3/batchnorm/mul/ReadVariableOp?
batch3/batchnorm/mulMulbatch3/batchnorm/Rsqrt:y:0+batch3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batch3/batchnorm/mul?
batch3/batchnorm/mul_1Muldense3/BiasAdd:output:0batch3/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batch3/batchnorm/mul_1?
batch3/batchnorm/mul_2Mulbatch3/moments/Squeeze:output:0batch3/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batch3/batchnorm/mul_2?
batch3/batchnorm/ReadVariableOpReadVariableOp(batch3_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02!
batch3/batchnorm/ReadVariableOp?
batch3/batchnorm/subSub'batch3/batchnorm/ReadVariableOp:value:0batch3/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batch3/batchnorm/sub?
batch3/batchnorm/add_1AddV2batch3/batchnorm/mul_1:z:0batch3/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batch3/batchnorm/add_1m
	act3/ReluRelubatch3/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2
	act3/Reluo
drop3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
drop3/dropout/Const?
drop3/dropout/MulMulact3/Relu:activations:0drop3/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
drop3/dropout/Mulq
drop3/dropout/ShapeShapeact3/Relu:activations:0*
T0*
_output_shapes
:2
drop3/dropout/Shape?
*drop3/dropout/random_uniform/RandomUniformRandomUniformdrop3/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02,
*drop3/dropout/random_uniform/RandomUniform?
drop3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
drop3/dropout/GreaterEqual/y?
drop3/dropout/GreaterEqualGreaterEqual3drop3/dropout/random_uniform/RandomUniform:output:0%drop3/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
drop3/dropout/GreaterEqual?
drop3/dropout/CastCastdrop3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
drop3/dropout/Cast?
drop3/dropout/Mul_1Muldrop3/dropout/Mul:z:0drop3/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
drop3/dropout/Mul_1?
value_net/MatMul/ReadVariableOpReadVariableOp(value_net_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02!
value_net/MatMul/ReadVariableOp?
value_net/MatMulMatMuldrop3/dropout/Mul_1:z:0'value_net/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
value_net/MatMul?
 value_net/BiasAdd/ReadVariableOpReadVariableOp)value_net_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 value_net/BiasAdd/ReadVariableOp?
value_net/BiasAddBiasAddvalue_net/MatMul:product:0(value_net/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
value_net/BiasAddv
value_net/TanhTanhvalue_net/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
value_net/Tanh?
 policy_net/MatMul/ReadVariableOpReadVariableOp)policy_net_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02"
 policy_net/MatMul/ReadVariableOp?
policy_net/MatMulMatMuldrop3/dropout/Mul_1:z:0(policy_net/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
policy_net/MatMul?
!policy_net/BiasAdd/ReadVariableOpReadVariableOp*policy_net_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!policy_net/BiasAdd/ReadVariableOp?
policy_net/BiasAddBiasAddpolicy_net/MatMul:product:0)policy_net/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
policy_net/BiasAdd?
policy_net/SoftmaxSoftmaxpolicy_net/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
policy_net/Softmaxw
IdentityIdentitypolicy_net/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityq

Identity_1Identityvalue_net/Tanh:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1?
NoOpNoOp^batch1/AssignMovingAvg&^batch1/AssignMovingAvg/ReadVariableOp^batch1/AssignMovingAvg_1(^batch1/AssignMovingAvg_1/ReadVariableOp ^batch1/batchnorm/ReadVariableOp$^batch1/batchnorm/mul/ReadVariableOp^batch2/AssignMovingAvg&^batch2/AssignMovingAvg/ReadVariableOp^batch2/AssignMovingAvg_1(^batch2/AssignMovingAvg_1/ReadVariableOp ^batch2/batchnorm/ReadVariableOp$^batch2/batchnorm/mul/ReadVariableOp^batch3/AssignMovingAvg&^batch3/AssignMovingAvg/ReadVariableOp^batch3/AssignMovingAvg_1(^batch3/AssignMovingAvg_1/ReadVariableOp ^batch3/batchnorm/ReadVariableOp$^batch3/batchnorm/mul/ReadVariableOp^dense1/BiasAdd/ReadVariableOp^dense1/MatMul/ReadVariableOp^dense2/BiasAdd/ReadVariableOp^dense2/MatMul/ReadVariableOp^dense3/BiasAdd/ReadVariableOp^dense3/MatMul/ReadVariableOp"^policy_net/BiasAdd/ReadVariableOp!^policy_net/MatMul/ReadVariableOp!^value_net/BiasAdd/ReadVariableOp ^value_net/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : : : 20
batch1/AssignMovingAvgbatch1/AssignMovingAvg2N
%batch1/AssignMovingAvg/ReadVariableOp%batch1/AssignMovingAvg/ReadVariableOp24
batch1/AssignMovingAvg_1batch1/AssignMovingAvg_12R
'batch1/AssignMovingAvg_1/ReadVariableOp'batch1/AssignMovingAvg_1/ReadVariableOp2B
batch1/batchnorm/ReadVariableOpbatch1/batchnorm/ReadVariableOp2J
#batch1/batchnorm/mul/ReadVariableOp#batch1/batchnorm/mul/ReadVariableOp20
batch2/AssignMovingAvgbatch2/AssignMovingAvg2N
%batch2/AssignMovingAvg/ReadVariableOp%batch2/AssignMovingAvg/ReadVariableOp24
batch2/AssignMovingAvg_1batch2/AssignMovingAvg_12R
'batch2/AssignMovingAvg_1/ReadVariableOp'batch2/AssignMovingAvg_1/ReadVariableOp2B
batch2/batchnorm/ReadVariableOpbatch2/batchnorm/ReadVariableOp2J
#batch2/batchnorm/mul/ReadVariableOp#batch2/batchnorm/mul/ReadVariableOp20
batch3/AssignMovingAvgbatch3/AssignMovingAvg2N
%batch3/AssignMovingAvg/ReadVariableOp%batch3/AssignMovingAvg/ReadVariableOp24
batch3/AssignMovingAvg_1batch3/AssignMovingAvg_12R
'batch3/AssignMovingAvg_1/ReadVariableOp'batch3/AssignMovingAvg_1/ReadVariableOp2B
batch3/batchnorm/ReadVariableOpbatch3/batchnorm/ReadVariableOp2J
#batch3/batchnorm/mul/ReadVariableOp#batch3/batchnorm/mul/ReadVariableOp2>
dense1/BiasAdd/ReadVariableOpdense1/BiasAdd/ReadVariableOp2<
dense1/MatMul/ReadVariableOpdense1/MatMul/ReadVariableOp2>
dense2/BiasAdd/ReadVariableOpdense2/BiasAdd/ReadVariableOp2<
dense2/MatMul/ReadVariableOpdense2/MatMul/ReadVariableOp2>
dense3/BiasAdd/ReadVariableOpdense3/BiasAdd/ReadVariableOp2<
dense3/MatMul/ReadVariableOpdense3/MatMul/ReadVariableOp2F
!policy_net/BiasAdd/ReadVariableOp!policy_net/BiasAdd/ReadVariableOp2D
 policy_net/MatMul/ReadVariableOp policy_net/MatMul/ReadVariableOp2D
 value_net/BiasAdd/ReadVariableOp value_net/BiasAdd/ReadVariableOp2B
value_net/MatMul/ReadVariableOpvalue_net/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
D__inference_batch3_layer_call_and_return_conditional_losses_11224458

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?H
?	
G__inference_noConv7x4_layer_call_and_return_conditional_losses_11225301
	state_7_4"
dense1_11225241:	?
dense1_11225243:	?
batch1_11225246:	?
batch1_11225248:	?
batch1_11225250:	?
batch1_11225252:	?#
dense2_11225257:
??
dense2_11225259:	?
batch2_11225262:	?
batch2_11225264:	?
batch2_11225266:	?
batch2_11225268:	?#
dense3_11225273:
??
dense3_11225275:	?
batch3_11225278:	?
batch3_11225280:	?
batch3_11225282:	?
batch3_11225284:	?%
value_net_11225289:	? 
value_net_11225291:&
policy_net_11225294:	?!
policy_net_11225296:
identity

identity_1??batch1/StatefulPartitionedCall?batch2/StatefulPartitionedCall?batch3/StatefulPartitionedCall?dense1/StatefulPartitionedCall?dense2/StatefulPartitionedCall?dense3/StatefulPartitionedCall?drop1/StatefulPartitionedCall?drop2/StatefulPartitionedCall?drop3/StatefulPartitionedCall?"policy_net/StatefulPartitionedCall?!value_net/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCall	state_7_4*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_112246092
flatten/PartitionedCall?
dense1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense1_11225241dense1_11225243*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense1_layer_call_and_return_conditional_losses_112246212 
dense1/StatefulPartitionedCall?
batch1/StatefulPartitionedCallStatefulPartitionedCall'dense1/StatefulPartitionedCall:output:0batch1_11225246batch1_11225248batch1_11225250batch1_11225252*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_batch1_layer_call_and_return_conditional_losses_112241942 
batch1/StatefulPartitionedCall?
act1/PartitionedCallPartitionedCall'batch1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_act1_layer_call_and_return_conditional_losses_112246412
act1/PartitionedCall?
drop1/StatefulPartitionedCallStatefulPartitionedCallact1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_drop1_layer_call_and_return_conditional_losses_112249312
drop1/StatefulPartitionedCall?
dense2/StatefulPartitionedCallStatefulPartitionedCall&drop1/StatefulPartitionedCall:output:0dense2_11225257dense2_11225259*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense2_layer_call_and_return_conditional_losses_112246602 
dense2/StatefulPartitionedCall?
batch2/StatefulPartitionedCallStatefulPartitionedCall'dense2/StatefulPartitionedCall:output:0batch2_11225262batch2_11225264batch2_11225266batch2_11225268*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_batch2_layer_call_and_return_conditional_losses_112243562 
batch2/StatefulPartitionedCall?
act2/PartitionedCallPartitionedCall'batch2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_act2_layer_call_and_return_conditional_losses_112246802
act2/PartitionedCall?
drop2/StatefulPartitionedCallStatefulPartitionedCallact2/PartitionedCall:output:0^drop1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_drop2_layer_call_and_return_conditional_losses_112248922
drop2/StatefulPartitionedCall?
dense3/StatefulPartitionedCallStatefulPartitionedCall&drop2/StatefulPartitionedCall:output:0dense3_11225273dense3_11225275*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense3_layer_call_and_return_conditional_losses_112246992 
dense3/StatefulPartitionedCall?
batch3/StatefulPartitionedCallStatefulPartitionedCall'dense3/StatefulPartitionedCall:output:0batch3_11225278batch3_11225280batch3_11225282batch3_11225284*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_batch3_layer_call_and_return_conditional_losses_112245182 
batch3/StatefulPartitionedCall?
act3/PartitionedCallPartitionedCall'batch3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_act3_layer_call_and_return_conditional_losses_112247192
act3/PartitionedCall?
drop3/StatefulPartitionedCallStatefulPartitionedCallact3/PartitionedCall:output:0^drop2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_drop3_layer_call_and_return_conditional_losses_112248532
drop3/StatefulPartitionedCall?
!value_net/StatefulPartitionedCallStatefulPartitionedCall&drop3/StatefulPartitionedCall:output:0value_net_11225289value_net_11225291*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_value_net_layer_call_and_return_conditional_losses_112247392#
!value_net/StatefulPartitionedCall?
"policy_net/StatefulPartitionedCallStatefulPartitionedCall&drop3/StatefulPartitionedCall:output:0policy_net_11225294policy_net_11225296*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_policy_net_layer_call_and_return_conditional_losses_112247562$
"policy_net/StatefulPartitionedCall?
IdentityIdentity+policy_net/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity*value_net/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1?
NoOpNoOp^batch1/StatefulPartitionedCall^batch2/StatefulPartitionedCall^batch3/StatefulPartitionedCall^dense1/StatefulPartitionedCall^dense2/StatefulPartitionedCall^dense3/StatefulPartitionedCall^drop1/StatefulPartitionedCall^drop2/StatefulPartitionedCall^drop3/StatefulPartitionedCall#^policy_net/StatefulPartitionedCall"^value_net/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : : : 2@
batch1/StatefulPartitionedCallbatch1/StatefulPartitionedCall2@
batch2/StatefulPartitionedCallbatch2/StatefulPartitionedCall2@
batch3/StatefulPartitionedCallbatch3/StatefulPartitionedCall2@
dense1/StatefulPartitionedCalldense1/StatefulPartitionedCall2@
dense2/StatefulPartitionedCalldense2/StatefulPartitionedCall2@
dense3/StatefulPartitionedCalldense3/StatefulPartitionedCall2>
drop1/StatefulPartitionedCalldrop1/StatefulPartitionedCall2>
drop2/StatefulPartitionedCalldrop2/StatefulPartitionedCall2>
drop3/StatefulPartitionedCalldrop3/StatefulPartitionedCall2H
"policy_net/StatefulPartitionedCall"policy_net/StatefulPartitionedCall2F
!value_net/StatefulPartitionedCall!value_net/StatefulPartitionedCall:V R
+
_output_shapes
:?????????
#
_user_specified_name	state_7_4
?
D
(__inference_drop3_layer_call_fn_11226125

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_drop3_layer_call_and_return_conditional_losses_112247262
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
C__inference_drop3_layer_call_and_return_conditional_losses_11224853

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
D
(__inference_drop2_layer_call_fn_11225989

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_drop2_layer_call_and_return_conditional_losses_112246872
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
C
'__inference_act2_layer_call_fn_11225967

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_act2_layer_call_and_return_conditional_losses_112246802
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
H__inference_policy_net_layer_call_and_return_conditional_losses_11224756

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
-__inference_policy_net_layer_call_fn_11226150

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_policy_net_layer_call_and_return_conditional_losses_112247562
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
&__inference_signature_wrapper_11225360
	state_7_4
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:
??

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:	?

unknown_18:

unknown_19:	?

unknown_20:
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall	state_7_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference__wrapped_model_112241102
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
+
_output_shapes
:?????????
#
_user_specified_name	state_7_4
?
?
)__inference_dense1_layer_call_fn_11225741

inputs
unknown:	?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense1_layer_call_and_return_conditional_losses_112246212
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
^
B__inference_act1_layer_call_and_return_conditional_losses_11224641

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:??????????2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_noConv7x4_layer_call_fn_11225660

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:
??

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:	?

unknown_18:

unknown_19:	?

unknown_20:
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_noConv7x4_layer_call_and_return_conditional_losses_112247642
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
a
E__inference_flatten_layer_call_and_return_conditional_losses_11225717

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
D
(__inference_drop1_layer_call_fn_11225853

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_drop1_layer_call_and_return_conditional_losses_112246482
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
^
B__inference_act2_layer_call_and_return_conditional_losses_11224680

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:??????????2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_dense3_layer_call_fn_11226013

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense3_layer_call_and_return_conditional_losses_112246992
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
D__inference_dense3_layer_call_and_return_conditional_losses_11224699

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddl
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
#__inference__wrapped_model_11224110
	state_7_4B
/noconv7x4_dense1_matmul_readvariableop_resource:	??
0noconv7x4_dense1_biasadd_readvariableop_resource:	?A
2noconv7x4_batch1_batchnorm_readvariableop_resource:	?E
6noconv7x4_batch1_batchnorm_mul_readvariableop_resource:	?C
4noconv7x4_batch1_batchnorm_readvariableop_1_resource:	?C
4noconv7x4_batch1_batchnorm_readvariableop_2_resource:	?C
/noconv7x4_dense2_matmul_readvariableop_resource:
???
0noconv7x4_dense2_biasadd_readvariableop_resource:	?A
2noconv7x4_batch2_batchnorm_readvariableop_resource:	?E
6noconv7x4_batch2_batchnorm_mul_readvariableop_resource:	?C
4noconv7x4_batch2_batchnorm_readvariableop_1_resource:	?C
4noconv7x4_batch2_batchnorm_readvariableop_2_resource:	?C
/noconv7x4_dense3_matmul_readvariableop_resource:
???
0noconv7x4_dense3_biasadd_readvariableop_resource:	?A
2noconv7x4_batch3_batchnorm_readvariableop_resource:	?E
6noconv7x4_batch3_batchnorm_mul_readvariableop_resource:	?C
4noconv7x4_batch3_batchnorm_readvariableop_1_resource:	?C
4noconv7x4_batch3_batchnorm_readvariableop_2_resource:	?E
2noconv7x4_value_net_matmul_readvariableop_resource:	?A
3noconv7x4_value_net_biasadd_readvariableop_resource:F
3noconv7x4_policy_net_matmul_readvariableop_resource:	?B
4noconv7x4_policy_net_biasadd_readvariableop_resource:
identity

identity_1??)noConv7x4/batch1/batchnorm/ReadVariableOp?+noConv7x4/batch1/batchnorm/ReadVariableOp_1?+noConv7x4/batch1/batchnorm/ReadVariableOp_2?-noConv7x4/batch1/batchnorm/mul/ReadVariableOp?)noConv7x4/batch2/batchnorm/ReadVariableOp?+noConv7x4/batch2/batchnorm/ReadVariableOp_1?+noConv7x4/batch2/batchnorm/ReadVariableOp_2?-noConv7x4/batch2/batchnorm/mul/ReadVariableOp?)noConv7x4/batch3/batchnorm/ReadVariableOp?+noConv7x4/batch3/batchnorm/ReadVariableOp_1?+noConv7x4/batch3/batchnorm/ReadVariableOp_2?-noConv7x4/batch3/batchnorm/mul/ReadVariableOp?'noConv7x4/dense1/BiasAdd/ReadVariableOp?&noConv7x4/dense1/MatMul/ReadVariableOp?'noConv7x4/dense2/BiasAdd/ReadVariableOp?&noConv7x4/dense2/MatMul/ReadVariableOp?'noConv7x4/dense3/BiasAdd/ReadVariableOp?&noConv7x4/dense3/MatMul/ReadVariableOp?+noConv7x4/policy_net/BiasAdd/ReadVariableOp?*noConv7x4/policy_net/MatMul/ReadVariableOp?*noConv7x4/value_net/BiasAdd/ReadVariableOp?)noConv7x4/value_net/MatMul/ReadVariableOp?
noConv7x4/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
noConv7x4/flatten/Const?
noConv7x4/flatten/ReshapeReshape	state_7_4 noConv7x4/flatten/Const:output:0*
T0*'
_output_shapes
:?????????2
noConv7x4/flatten/Reshape?
&noConv7x4/dense1/MatMul/ReadVariableOpReadVariableOp/noconv7x4_dense1_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02(
&noConv7x4/dense1/MatMul/ReadVariableOp?
noConv7x4/dense1/MatMulMatMul"noConv7x4/flatten/Reshape:output:0.noConv7x4/dense1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
noConv7x4/dense1/MatMul?
'noConv7x4/dense1/BiasAdd/ReadVariableOpReadVariableOp0noconv7x4_dense1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'noConv7x4/dense1/BiasAdd/ReadVariableOp?
noConv7x4/dense1/BiasAddBiasAdd!noConv7x4/dense1/MatMul:product:0/noConv7x4/dense1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
noConv7x4/dense1/BiasAdd?
)noConv7x4/batch1/batchnorm/ReadVariableOpReadVariableOp2noconv7x4_batch1_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)noConv7x4/batch1/batchnorm/ReadVariableOp?
 noConv7x4/batch1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2"
 noConv7x4/batch1/batchnorm/add/y?
noConv7x4/batch1/batchnorm/addAddV21noConv7x4/batch1/batchnorm/ReadVariableOp:value:0)noConv7x4/batch1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2 
noConv7x4/batch1/batchnorm/add?
 noConv7x4/batch1/batchnorm/RsqrtRsqrt"noConv7x4/batch1/batchnorm/add:z:0*
T0*
_output_shapes	
:?2"
 noConv7x4/batch1/batchnorm/Rsqrt?
-noConv7x4/batch1/batchnorm/mul/ReadVariableOpReadVariableOp6noconv7x4_batch1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-noConv7x4/batch1/batchnorm/mul/ReadVariableOp?
noConv7x4/batch1/batchnorm/mulMul$noConv7x4/batch1/batchnorm/Rsqrt:y:05noConv7x4/batch1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2 
noConv7x4/batch1/batchnorm/mul?
 noConv7x4/batch1/batchnorm/mul_1Mul!noConv7x4/dense1/BiasAdd:output:0"noConv7x4/batch1/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2"
 noConv7x4/batch1/batchnorm/mul_1?
+noConv7x4/batch1/batchnorm/ReadVariableOp_1ReadVariableOp4noconv7x4_batch1_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02-
+noConv7x4/batch1/batchnorm/ReadVariableOp_1?
 noConv7x4/batch1/batchnorm/mul_2Mul3noConv7x4/batch1/batchnorm/ReadVariableOp_1:value:0"noConv7x4/batch1/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2"
 noConv7x4/batch1/batchnorm/mul_2?
+noConv7x4/batch1/batchnorm/ReadVariableOp_2ReadVariableOp4noconv7x4_batch1_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02-
+noConv7x4/batch1/batchnorm/ReadVariableOp_2?
noConv7x4/batch1/batchnorm/subSub3noConv7x4/batch1/batchnorm/ReadVariableOp_2:value:0$noConv7x4/batch1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2 
noConv7x4/batch1/batchnorm/sub?
 noConv7x4/batch1/batchnorm/add_1AddV2$noConv7x4/batch1/batchnorm/mul_1:z:0"noConv7x4/batch1/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2"
 noConv7x4/batch1/batchnorm/add_1?
noConv7x4/act1/ReluRelu$noConv7x4/batch1/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2
noConv7x4/act1/Relu?
noConv7x4/drop1/IdentityIdentity!noConv7x4/act1/Relu:activations:0*
T0*(
_output_shapes
:??????????2
noConv7x4/drop1/Identity?
&noConv7x4/dense2/MatMul/ReadVariableOpReadVariableOp/noconv7x4_dense2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02(
&noConv7x4/dense2/MatMul/ReadVariableOp?
noConv7x4/dense2/MatMulMatMul!noConv7x4/drop1/Identity:output:0.noConv7x4/dense2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
noConv7x4/dense2/MatMul?
'noConv7x4/dense2/BiasAdd/ReadVariableOpReadVariableOp0noconv7x4_dense2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'noConv7x4/dense2/BiasAdd/ReadVariableOp?
noConv7x4/dense2/BiasAddBiasAdd!noConv7x4/dense2/MatMul:product:0/noConv7x4/dense2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
noConv7x4/dense2/BiasAdd?
)noConv7x4/batch2/batchnorm/ReadVariableOpReadVariableOp2noconv7x4_batch2_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)noConv7x4/batch2/batchnorm/ReadVariableOp?
 noConv7x4/batch2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2"
 noConv7x4/batch2/batchnorm/add/y?
noConv7x4/batch2/batchnorm/addAddV21noConv7x4/batch2/batchnorm/ReadVariableOp:value:0)noConv7x4/batch2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2 
noConv7x4/batch2/batchnorm/add?
 noConv7x4/batch2/batchnorm/RsqrtRsqrt"noConv7x4/batch2/batchnorm/add:z:0*
T0*
_output_shapes	
:?2"
 noConv7x4/batch2/batchnorm/Rsqrt?
-noConv7x4/batch2/batchnorm/mul/ReadVariableOpReadVariableOp6noconv7x4_batch2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-noConv7x4/batch2/batchnorm/mul/ReadVariableOp?
noConv7x4/batch2/batchnorm/mulMul$noConv7x4/batch2/batchnorm/Rsqrt:y:05noConv7x4/batch2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2 
noConv7x4/batch2/batchnorm/mul?
 noConv7x4/batch2/batchnorm/mul_1Mul!noConv7x4/dense2/BiasAdd:output:0"noConv7x4/batch2/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2"
 noConv7x4/batch2/batchnorm/mul_1?
+noConv7x4/batch2/batchnorm/ReadVariableOp_1ReadVariableOp4noconv7x4_batch2_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02-
+noConv7x4/batch2/batchnorm/ReadVariableOp_1?
 noConv7x4/batch2/batchnorm/mul_2Mul3noConv7x4/batch2/batchnorm/ReadVariableOp_1:value:0"noConv7x4/batch2/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2"
 noConv7x4/batch2/batchnorm/mul_2?
+noConv7x4/batch2/batchnorm/ReadVariableOp_2ReadVariableOp4noconv7x4_batch2_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02-
+noConv7x4/batch2/batchnorm/ReadVariableOp_2?
noConv7x4/batch2/batchnorm/subSub3noConv7x4/batch2/batchnorm/ReadVariableOp_2:value:0$noConv7x4/batch2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2 
noConv7x4/batch2/batchnorm/sub?
 noConv7x4/batch2/batchnorm/add_1AddV2$noConv7x4/batch2/batchnorm/mul_1:z:0"noConv7x4/batch2/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2"
 noConv7x4/batch2/batchnorm/add_1?
noConv7x4/act2/ReluRelu$noConv7x4/batch2/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2
noConv7x4/act2/Relu?
noConv7x4/drop2/IdentityIdentity!noConv7x4/act2/Relu:activations:0*
T0*(
_output_shapes
:??????????2
noConv7x4/drop2/Identity?
&noConv7x4/dense3/MatMul/ReadVariableOpReadVariableOp/noconv7x4_dense3_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02(
&noConv7x4/dense3/MatMul/ReadVariableOp?
noConv7x4/dense3/MatMulMatMul!noConv7x4/drop2/Identity:output:0.noConv7x4/dense3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
noConv7x4/dense3/MatMul?
'noConv7x4/dense3/BiasAdd/ReadVariableOpReadVariableOp0noconv7x4_dense3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'noConv7x4/dense3/BiasAdd/ReadVariableOp?
noConv7x4/dense3/BiasAddBiasAdd!noConv7x4/dense3/MatMul:product:0/noConv7x4/dense3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
noConv7x4/dense3/BiasAdd?
)noConv7x4/batch3/batchnorm/ReadVariableOpReadVariableOp2noconv7x4_batch3_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)noConv7x4/batch3/batchnorm/ReadVariableOp?
 noConv7x4/batch3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2"
 noConv7x4/batch3/batchnorm/add/y?
noConv7x4/batch3/batchnorm/addAddV21noConv7x4/batch3/batchnorm/ReadVariableOp:value:0)noConv7x4/batch3/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2 
noConv7x4/batch3/batchnorm/add?
 noConv7x4/batch3/batchnorm/RsqrtRsqrt"noConv7x4/batch3/batchnorm/add:z:0*
T0*
_output_shapes	
:?2"
 noConv7x4/batch3/batchnorm/Rsqrt?
-noConv7x4/batch3/batchnorm/mul/ReadVariableOpReadVariableOp6noconv7x4_batch3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-noConv7x4/batch3/batchnorm/mul/ReadVariableOp?
noConv7x4/batch3/batchnorm/mulMul$noConv7x4/batch3/batchnorm/Rsqrt:y:05noConv7x4/batch3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2 
noConv7x4/batch3/batchnorm/mul?
 noConv7x4/batch3/batchnorm/mul_1Mul!noConv7x4/dense3/BiasAdd:output:0"noConv7x4/batch3/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2"
 noConv7x4/batch3/batchnorm/mul_1?
+noConv7x4/batch3/batchnorm/ReadVariableOp_1ReadVariableOp4noconv7x4_batch3_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02-
+noConv7x4/batch3/batchnorm/ReadVariableOp_1?
 noConv7x4/batch3/batchnorm/mul_2Mul3noConv7x4/batch3/batchnorm/ReadVariableOp_1:value:0"noConv7x4/batch3/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2"
 noConv7x4/batch3/batchnorm/mul_2?
+noConv7x4/batch3/batchnorm/ReadVariableOp_2ReadVariableOp4noconv7x4_batch3_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02-
+noConv7x4/batch3/batchnorm/ReadVariableOp_2?
noConv7x4/batch3/batchnorm/subSub3noConv7x4/batch3/batchnorm/ReadVariableOp_2:value:0$noConv7x4/batch3/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2 
noConv7x4/batch3/batchnorm/sub?
 noConv7x4/batch3/batchnorm/add_1AddV2$noConv7x4/batch3/batchnorm/mul_1:z:0"noConv7x4/batch3/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2"
 noConv7x4/batch3/batchnorm/add_1?
noConv7x4/act3/ReluRelu$noConv7x4/batch3/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2
noConv7x4/act3/Relu?
noConv7x4/drop3/IdentityIdentity!noConv7x4/act3/Relu:activations:0*
T0*(
_output_shapes
:??????????2
noConv7x4/drop3/Identity?
)noConv7x4/value_net/MatMul/ReadVariableOpReadVariableOp2noconv7x4_value_net_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02+
)noConv7x4/value_net/MatMul/ReadVariableOp?
noConv7x4/value_net/MatMulMatMul!noConv7x4/drop3/Identity:output:01noConv7x4/value_net/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
noConv7x4/value_net/MatMul?
*noConv7x4/value_net/BiasAdd/ReadVariableOpReadVariableOp3noconv7x4_value_net_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*noConv7x4/value_net/BiasAdd/ReadVariableOp?
noConv7x4/value_net/BiasAddBiasAdd$noConv7x4/value_net/MatMul:product:02noConv7x4/value_net/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
noConv7x4/value_net/BiasAdd?
noConv7x4/value_net/TanhTanh$noConv7x4/value_net/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
noConv7x4/value_net/Tanh?
*noConv7x4/policy_net/MatMul/ReadVariableOpReadVariableOp3noconv7x4_policy_net_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02,
*noConv7x4/policy_net/MatMul/ReadVariableOp?
noConv7x4/policy_net/MatMulMatMul!noConv7x4/drop3/Identity:output:02noConv7x4/policy_net/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
noConv7x4/policy_net/MatMul?
+noConv7x4/policy_net/BiasAdd/ReadVariableOpReadVariableOp4noconv7x4_policy_net_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+noConv7x4/policy_net/BiasAdd/ReadVariableOp?
noConv7x4/policy_net/BiasAddBiasAdd%noConv7x4/policy_net/MatMul:product:03noConv7x4/policy_net/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
noConv7x4/policy_net/BiasAdd?
noConv7x4/policy_net/SoftmaxSoftmax%noConv7x4/policy_net/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
noConv7x4/policy_net/Softmax?
IdentityIdentity&noConv7x4/policy_net/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity{

Identity_1IdentitynoConv7x4/value_net/Tanh:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1?
NoOpNoOp*^noConv7x4/batch1/batchnorm/ReadVariableOp,^noConv7x4/batch1/batchnorm/ReadVariableOp_1,^noConv7x4/batch1/batchnorm/ReadVariableOp_2.^noConv7x4/batch1/batchnorm/mul/ReadVariableOp*^noConv7x4/batch2/batchnorm/ReadVariableOp,^noConv7x4/batch2/batchnorm/ReadVariableOp_1,^noConv7x4/batch2/batchnorm/ReadVariableOp_2.^noConv7x4/batch2/batchnorm/mul/ReadVariableOp*^noConv7x4/batch3/batchnorm/ReadVariableOp,^noConv7x4/batch3/batchnorm/ReadVariableOp_1,^noConv7x4/batch3/batchnorm/ReadVariableOp_2.^noConv7x4/batch3/batchnorm/mul/ReadVariableOp(^noConv7x4/dense1/BiasAdd/ReadVariableOp'^noConv7x4/dense1/MatMul/ReadVariableOp(^noConv7x4/dense2/BiasAdd/ReadVariableOp'^noConv7x4/dense2/MatMul/ReadVariableOp(^noConv7x4/dense3/BiasAdd/ReadVariableOp'^noConv7x4/dense3/MatMul/ReadVariableOp,^noConv7x4/policy_net/BiasAdd/ReadVariableOp+^noConv7x4/policy_net/MatMul/ReadVariableOp+^noConv7x4/value_net/BiasAdd/ReadVariableOp*^noConv7x4/value_net/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : : : 2V
)noConv7x4/batch1/batchnorm/ReadVariableOp)noConv7x4/batch1/batchnorm/ReadVariableOp2Z
+noConv7x4/batch1/batchnorm/ReadVariableOp_1+noConv7x4/batch1/batchnorm/ReadVariableOp_12Z
+noConv7x4/batch1/batchnorm/ReadVariableOp_2+noConv7x4/batch1/batchnorm/ReadVariableOp_22^
-noConv7x4/batch1/batchnorm/mul/ReadVariableOp-noConv7x4/batch1/batchnorm/mul/ReadVariableOp2V
)noConv7x4/batch2/batchnorm/ReadVariableOp)noConv7x4/batch2/batchnorm/ReadVariableOp2Z
+noConv7x4/batch2/batchnorm/ReadVariableOp_1+noConv7x4/batch2/batchnorm/ReadVariableOp_12Z
+noConv7x4/batch2/batchnorm/ReadVariableOp_2+noConv7x4/batch2/batchnorm/ReadVariableOp_22^
-noConv7x4/batch2/batchnorm/mul/ReadVariableOp-noConv7x4/batch2/batchnorm/mul/ReadVariableOp2V
)noConv7x4/batch3/batchnorm/ReadVariableOp)noConv7x4/batch3/batchnorm/ReadVariableOp2Z
+noConv7x4/batch3/batchnorm/ReadVariableOp_1+noConv7x4/batch3/batchnorm/ReadVariableOp_12Z
+noConv7x4/batch3/batchnorm/ReadVariableOp_2+noConv7x4/batch3/batchnorm/ReadVariableOp_22^
-noConv7x4/batch3/batchnorm/mul/ReadVariableOp-noConv7x4/batch3/batchnorm/mul/ReadVariableOp2R
'noConv7x4/dense1/BiasAdd/ReadVariableOp'noConv7x4/dense1/BiasAdd/ReadVariableOp2P
&noConv7x4/dense1/MatMul/ReadVariableOp&noConv7x4/dense1/MatMul/ReadVariableOp2R
'noConv7x4/dense2/BiasAdd/ReadVariableOp'noConv7x4/dense2/BiasAdd/ReadVariableOp2P
&noConv7x4/dense2/MatMul/ReadVariableOp&noConv7x4/dense2/MatMul/ReadVariableOp2R
'noConv7x4/dense3/BiasAdd/ReadVariableOp'noConv7x4/dense3/BiasAdd/ReadVariableOp2P
&noConv7x4/dense3/MatMul/ReadVariableOp&noConv7x4/dense3/MatMul/ReadVariableOp2Z
+noConv7x4/policy_net/BiasAdd/ReadVariableOp+noConv7x4/policy_net/BiasAdd/ReadVariableOp2X
*noConv7x4/policy_net/MatMul/ReadVariableOp*noConv7x4/policy_net/MatMul/ReadVariableOp2X
*noConv7x4/value_net/BiasAdd/ReadVariableOp*noConv7x4/value_net/BiasAdd/ReadVariableOp2V
)noConv7x4/value_net/MatMul/ReadVariableOp)noConv7x4/value_net/MatMul/ReadVariableOp:V R
+
_output_shapes
:?????????
#
_user_specified_name	state_7_4
?
a
(__inference_drop3_layer_call_fn_11226130

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_drop3_layer_call_and_return_conditional_losses_112248532
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
^
B__inference_act1_layer_call_and_return_conditional_losses_11225826

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:??????????2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?H
?	
G__inference_noConv7x4_layer_call_and_return_conditional_losses_11225073

inputs"
dense1_11225013:	?
dense1_11225015:	?
batch1_11225018:	?
batch1_11225020:	?
batch1_11225022:	?
batch1_11225024:	?#
dense2_11225029:
??
dense2_11225031:	?
batch2_11225034:	?
batch2_11225036:	?
batch2_11225038:	?
batch2_11225040:	?#
dense3_11225045:
??
dense3_11225047:	?
batch3_11225050:	?
batch3_11225052:	?
batch3_11225054:	?
batch3_11225056:	?%
value_net_11225061:	? 
value_net_11225063:&
policy_net_11225066:	?!
policy_net_11225068:
identity

identity_1??batch1/StatefulPartitionedCall?batch2/StatefulPartitionedCall?batch3/StatefulPartitionedCall?dense1/StatefulPartitionedCall?dense2/StatefulPartitionedCall?dense3/StatefulPartitionedCall?drop1/StatefulPartitionedCall?drop2/StatefulPartitionedCall?drop3/StatefulPartitionedCall?"policy_net/StatefulPartitionedCall?!value_net/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_112246092
flatten/PartitionedCall?
dense1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense1_11225013dense1_11225015*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense1_layer_call_and_return_conditional_losses_112246212 
dense1/StatefulPartitionedCall?
batch1/StatefulPartitionedCallStatefulPartitionedCall'dense1/StatefulPartitionedCall:output:0batch1_11225018batch1_11225020batch1_11225022batch1_11225024*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_batch1_layer_call_and_return_conditional_losses_112241942 
batch1/StatefulPartitionedCall?
act1/PartitionedCallPartitionedCall'batch1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_act1_layer_call_and_return_conditional_losses_112246412
act1/PartitionedCall?
drop1/StatefulPartitionedCallStatefulPartitionedCallact1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_drop1_layer_call_and_return_conditional_losses_112249312
drop1/StatefulPartitionedCall?
dense2/StatefulPartitionedCallStatefulPartitionedCall&drop1/StatefulPartitionedCall:output:0dense2_11225029dense2_11225031*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense2_layer_call_and_return_conditional_losses_112246602 
dense2/StatefulPartitionedCall?
batch2/StatefulPartitionedCallStatefulPartitionedCall'dense2/StatefulPartitionedCall:output:0batch2_11225034batch2_11225036batch2_11225038batch2_11225040*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_batch2_layer_call_and_return_conditional_losses_112243562 
batch2/StatefulPartitionedCall?
act2/PartitionedCallPartitionedCall'batch2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_act2_layer_call_and_return_conditional_losses_112246802
act2/PartitionedCall?
drop2/StatefulPartitionedCallStatefulPartitionedCallact2/PartitionedCall:output:0^drop1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_drop2_layer_call_and_return_conditional_losses_112248922
drop2/StatefulPartitionedCall?
dense3/StatefulPartitionedCallStatefulPartitionedCall&drop2/StatefulPartitionedCall:output:0dense3_11225045dense3_11225047*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense3_layer_call_and_return_conditional_losses_112246992 
dense3/StatefulPartitionedCall?
batch3/StatefulPartitionedCallStatefulPartitionedCall'dense3/StatefulPartitionedCall:output:0batch3_11225050batch3_11225052batch3_11225054batch3_11225056*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_batch3_layer_call_and_return_conditional_losses_112245182 
batch3/StatefulPartitionedCall?
act3/PartitionedCallPartitionedCall'batch3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_act3_layer_call_and_return_conditional_losses_112247192
act3/PartitionedCall?
drop3/StatefulPartitionedCallStatefulPartitionedCallact3/PartitionedCall:output:0^drop2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_drop3_layer_call_and_return_conditional_losses_112248532
drop3/StatefulPartitionedCall?
!value_net/StatefulPartitionedCallStatefulPartitionedCall&drop3/StatefulPartitionedCall:output:0value_net_11225061value_net_11225063*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_value_net_layer_call_and_return_conditional_losses_112247392#
!value_net/StatefulPartitionedCall?
"policy_net/StatefulPartitionedCallStatefulPartitionedCall&drop3/StatefulPartitionedCall:output:0policy_net_11225066policy_net_11225068*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_policy_net_layer_call_and_return_conditional_losses_112247562$
"policy_net/StatefulPartitionedCall?
IdentityIdentity+policy_net/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity*value_net/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1?
NoOpNoOp^batch1/StatefulPartitionedCall^batch2/StatefulPartitionedCall^batch3/StatefulPartitionedCall^dense1/StatefulPartitionedCall^dense2/StatefulPartitionedCall^dense3/StatefulPartitionedCall^drop1/StatefulPartitionedCall^drop2/StatefulPartitionedCall^drop3/StatefulPartitionedCall#^policy_net/StatefulPartitionedCall"^value_net/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : : : 2@
batch1/StatefulPartitionedCallbatch1/StatefulPartitionedCall2@
batch2/StatefulPartitionedCallbatch2/StatefulPartitionedCall2@
batch3/StatefulPartitionedCallbatch3/StatefulPartitionedCall2@
dense1/StatefulPartitionedCalldense1/StatefulPartitionedCall2@
dense2/StatefulPartitionedCalldense2/StatefulPartitionedCall2@
dense3/StatefulPartitionedCalldense3/StatefulPartitionedCall2>
drop1/StatefulPartitionedCalldrop1/StatefulPartitionedCall2>
drop2/StatefulPartitionedCalldrop2/StatefulPartitionedCall2>
drop3/StatefulPartitionedCalldrop3/StatefulPartitionedCall2H
"policy_net/StatefulPartitionedCall"policy_net/StatefulPartitionedCall2F
!value_net/StatefulPartitionedCall!value_net/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
a
C__inference_drop3_layer_call_and_return_conditional_losses_11226108

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_batch1_layer_call_fn_11225821

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_batch1_layer_call_and_return_conditional_losses_112241942
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?&
$__inference__traced_restore_11226594
file_prefix1
assignvariableop_dense1_kernel:	?-
assignvariableop_1_dense1_bias:	?.
assignvariableop_2_batch1_gamma:	?-
assignvariableop_3_batch1_beta:	?4
%assignvariableop_4_batch1_moving_mean:	?8
)assignvariableop_5_batch1_moving_variance:	?4
 assignvariableop_6_dense2_kernel:
??-
assignvariableop_7_dense2_bias:	?.
assignvariableop_8_batch2_gamma:	?-
assignvariableop_9_batch2_beta:	?5
&assignvariableop_10_batch2_moving_mean:	?9
*assignvariableop_11_batch2_moving_variance:	?5
!assignvariableop_12_dense3_kernel:
??.
assignvariableop_13_dense3_bias:	?/
 assignvariableop_14_batch3_gamma:	?.
assignvariableop_15_batch3_beta:	?5
&assignvariableop_16_batch3_moving_mean:	?9
*assignvariableop_17_batch3_moving_variance:	?8
%assignvariableop_18_policy_net_kernel:	?1
#assignvariableop_19_policy_net_bias:7
$assignvariableop_20_value_net_kernel:	?0
"assignvariableop_21_value_net_bias:'
assignvariableop_22_adam_iter:	 )
assignvariableop_23_adam_beta_1: )
assignvariableop_24_adam_beta_2: (
assignvariableop_25_adam_decay: 0
&assignvariableop_26_adam_learning_rate: #
assignvariableop_27_total: #
assignvariableop_28_count: %
assignvariableop_29_total_1: %
assignvariableop_30_count_1: %
assignvariableop_31_total_2: %
assignvariableop_32_count_2: ;
(assignvariableop_33_adam_dense1_kernel_m:	?5
&assignvariableop_34_adam_dense1_bias_m:	?6
'assignvariableop_35_adam_batch1_gamma_m:	?5
&assignvariableop_36_adam_batch1_beta_m:	?<
(assignvariableop_37_adam_dense2_kernel_m:
??5
&assignvariableop_38_adam_dense2_bias_m:	?6
'assignvariableop_39_adam_batch2_gamma_m:	?5
&assignvariableop_40_adam_batch2_beta_m:	?<
(assignvariableop_41_adam_dense3_kernel_m:
??5
&assignvariableop_42_adam_dense3_bias_m:	?6
'assignvariableop_43_adam_batch3_gamma_m:	?5
&assignvariableop_44_adam_batch3_beta_m:	??
,assignvariableop_45_adam_policy_net_kernel_m:	?8
*assignvariableop_46_adam_policy_net_bias_m:>
+assignvariableop_47_adam_value_net_kernel_m:	?7
)assignvariableop_48_adam_value_net_bias_m:;
(assignvariableop_49_adam_dense1_kernel_v:	?5
&assignvariableop_50_adam_dense1_bias_v:	?6
'assignvariableop_51_adam_batch1_gamma_v:	?5
&assignvariableop_52_adam_batch1_beta_v:	?<
(assignvariableop_53_adam_dense2_kernel_v:
??5
&assignvariableop_54_adam_dense2_bias_v:	?6
'assignvariableop_55_adam_batch2_gamma_v:	?5
&assignvariableop_56_adam_batch2_beta_v:	?<
(assignvariableop_57_adam_dense3_kernel_v:
??5
&assignvariableop_58_adam_dense3_bias_v:	?6
'assignvariableop_59_adam_batch3_gamma_v:	?5
&assignvariableop_60_adam_batch3_beta_v:	??
,assignvariableop_61_adam_policy_net_kernel_v:	?8
*assignvariableop_62_adam_policy_net_bias_v:>
+assignvariableop_63_adam_value_net_kernel_v:	?7
)assignvariableop_64_adam_value_net_bias_v:
identity_66??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?$
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:B*
dtype0*?#
value?#B?#BB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:B*
dtype0*?
value?B?BB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*P
dtypesF
D2B	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_dense1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_batch1_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_batch1_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp%assignvariableop_4_batch1_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp)assignvariableop_5_batch1_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp assignvariableop_6_dense2_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense2_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_batch2_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_batch2_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp&assignvariableop_10_batch2_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp*assignvariableop_11_batch2_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp!assignvariableop_12_dense3_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_dense3_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp assignvariableop_14_batch3_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_batch3_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp&assignvariableop_16_batch3_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp*assignvariableop_17_batch3_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp%assignvariableop_18_policy_net_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp#assignvariableop_19_policy_net_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp$assignvariableop_20_value_net_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp"assignvariableop_21_value_net_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOpassignvariableop_22_adam_iterIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOpassignvariableop_23_adam_beta_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOpassignvariableop_24_adam_beta_2Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOpassignvariableop_25_adam_decayIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp&assignvariableop_26_adam_learning_rateIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOpassignvariableop_27_totalIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOpassignvariableop_28_countIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOpassignvariableop_29_total_1Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOpassignvariableop_30_count_1Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOpassignvariableop_31_total_2Identity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOpassignvariableop_32_count_2Identity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp(assignvariableop_33_adam_dense1_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp&assignvariableop_34_adam_dense1_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp'assignvariableop_35_adam_batch1_gamma_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp&assignvariableop_36_adam_batch1_beta_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp(assignvariableop_37_adam_dense2_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp&assignvariableop_38_adam_dense2_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp'assignvariableop_39_adam_batch2_gamma_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp&assignvariableop_40_adam_batch2_beta_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp(assignvariableop_41_adam_dense3_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp&assignvariableop_42_adam_dense3_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp'assignvariableop_43_adam_batch3_gamma_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp&assignvariableop_44_adam_batch3_beta_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp,assignvariableop_45_adam_policy_net_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp*assignvariableop_46_adam_policy_net_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp+assignvariableop_47_adam_value_net_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_value_net_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp(assignvariableop_49_adam_dense1_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp&assignvariableop_50_adam_dense1_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp'assignvariableop_51_adam_batch1_gamma_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp&assignvariableop_52_adam_batch1_beta_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp(assignvariableop_53_adam_dense2_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp&assignvariableop_54_adam_dense2_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp'assignvariableop_55_adam_batch2_gamma_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp&assignvariableop_56_adam_batch2_beta_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp(assignvariableop_57_adam_dense3_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp&assignvariableop_58_adam_dense3_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp'assignvariableop_59_adam_batch3_gamma_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp&assignvariableop_60_adam_batch3_beta_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOp,assignvariableop_61_adam_policy_net_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOp*assignvariableop_62_adam_policy_net_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63?
AssignVariableOp_63AssignVariableOp+assignvariableop_63_adam_value_net_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64?
AssignVariableOp_64AssignVariableOp)assignvariableop_64_adam_value_net_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_649
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_65Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_65f
Identity_66IdentityIdentity_65:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_66?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_66Identity_66:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
)__inference_batch3_layer_call_fn_11226093

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_batch3_layer_call_and_return_conditional_losses_112245182
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
a
C__inference_drop2_layer_call_and_return_conditional_losses_11224687

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
C
'__inference_act3_layer_call_fn_11226103

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_act3_layer_call_and_return_conditional_losses_112247192
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
G__inference_value_net_layer_call_and_return_conditional_losses_11224739

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Tanhc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?*
?
D__inference_batch1_layer_call_and_return_conditional_losses_11225795

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?0
!batchnorm_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_batch2_layer_call_fn_11225957

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_batch2_layer_call_and_return_conditional_losses_112243562
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
a
E__inference_flatten_layer_call_and_return_conditional_losses_11224609

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
D__inference_dense1_layer_call_and_return_conditional_losses_11225732

inputs1
matmul_readvariableop_resource:	?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddl
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
a
C__inference_drop1_layer_call_and_return_conditional_losses_11225836

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_noConv7x4_layer_call_fn_11225711

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:
??

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:	?

unknown_18:

unknown_19:	?

unknown_20:
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*2
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_noConv7x4_layer_call_and_return_conditional_losses_112250732
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
C
'__inference_act1_layer_call_fn_11225831

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_act1_layer_call_and_return_conditional_losses_112246412
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
F
*__inference_flatten_layer_call_fn_11225722

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_112246092
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?*
?
D__inference_batch1_layer_call_and_return_conditional_losses_11224194

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?0
!batchnorm_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_batch2_layer_call_fn_11225944

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_batch2_layer_call_and_return_conditional_losses_112242962
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_batch1_layer_call_fn_11225808

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_batch1_layer_call_and_return_conditional_losses_112241342
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
D__inference_batch2_layer_call_and_return_conditional_losses_11225897

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
H__inference_policy_net_layer_call_and_return_conditional_losses_11226141

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
D__inference_dense3_layer_call_and_return_conditional_losses_11226004

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddl
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
^
B__inference_act2_layer_call_and_return_conditional_losses_11225962

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:??????????2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_noConv7x4_layer_call_fn_11224813
	state_7_4
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:
??

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:	?

unknown_18:

unknown_19:	?

unknown_20:
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall	state_7_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_noConv7x4_layer_call_and_return_conditional_losses_112247642
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
+
_output_shapes
:?????????
#
_user_specified_name	state_7_4
?D
?
G__inference_noConv7x4_layer_call_and_return_conditional_losses_11225237
	state_7_4"
dense1_11225177:	?
dense1_11225179:	?
batch1_11225182:	?
batch1_11225184:	?
batch1_11225186:	?
batch1_11225188:	?#
dense2_11225193:
??
dense2_11225195:	?
batch2_11225198:	?
batch2_11225200:	?
batch2_11225202:	?
batch2_11225204:	?#
dense3_11225209:
??
dense3_11225211:	?
batch3_11225214:	?
batch3_11225216:	?
batch3_11225218:	?
batch3_11225220:	?%
value_net_11225225:	? 
value_net_11225227:&
policy_net_11225230:	?!
policy_net_11225232:
identity

identity_1??batch1/StatefulPartitionedCall?batch2/StatefulPartitionedCall?batch3/StatefulPartitionedCall?dense1/StatefulPartitionedCall?dense2/StatefulPartitionedCall?dense3/StatefulPartitionedCall?"policy_net/StatefulPartitionedCall?!value_net/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCall	state_7_4*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_112246092
flatten/PartitionedCall?
dense1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense1_11225177dense1_11225179*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense1_layer_call_and_return_conditional_losses_112246212 
dense1/StatefulPartitionedCall?
batch1/StatefulPartitionedCallStatefulPartitionedCall'dense1/StatefulPartitionedCall:output:0batch1_11225182batch1_11225184batch1_11225186batch1_11225188*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_batch1_layer_call_and_return_conditional_losses_112241342 
batch1/StatefulPartitionedCall?
act1/PartitionedCallPartitionedCall'batch1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_act1_layer_call_and_return_conditional_losses_112246412
act1/PartitionedCall?
drop1/PartitionedCallPartitionedCallact1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_drop1_layer_call_and_return_conditional_losses_112246482
drop1/PartitionedCall?
dense2/StatefulPartitionedCallStatefulPartitionedCalldrop1/PartitionedCall:output:0dense2_11225193dense2_11225195*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense2_layer_call_and_return_conditional_losses_112246602 
dense2/StatefulPartitionedCall?
batch2/StatefulPartitionedCallStatefulPartitionedCall'dense2/StatefulPartitionedCall:output:0batch2_11225198batch2_11225200batch2_11225202batch2_11225204*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_batch2_layer_call_and_return_conditional_losses_112242962 
batch2/StatefulPartitionedCall?
act2/PartitionedCallPartitionedCall'batch2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_act2_layer_call_and_return_conditional_losses_112246802
act2/PartitionedCall?
drop2/PartitionedCallPartitionedCallact2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_drop2_layer_call_and_return_conditional_losses_112246872
drop2/PartitionedCall?
dense3/StatefulPartitionedCallStatefulPartitionedCalldrop2/PartitionedCall:output:0dense3_11225209dense3_11225211*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense3_layer_call_and_return_conditional_losses_112246992 
dense3/StatefulPartitionedCall?
batch3/StatefulPartitionedCallStatefulPartitionedCall'dense3/StatefulPartitionedCall:output:0batch3_11225214batch3_11225216batch3_11225218batch3_11225220*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_batch3_layer_call_and_return_conditional_losses_112244582 
batch3/StatefulPartitionedCall?
act3/PartitionedCallPartitionedCall'batch3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_act3_layer_call_and_return_conditional_losses_112247192
act3/PartitionedCall?
drop3/PartitionedCallPartitionedCallact3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_drop3_layer_call_and_return_conditional_losses_112247262
drop3/PartitionedCall?
!value_net/StatefulPartitionedCallStatefulPartitionedCalldrop3/PartitionedCall:output:0value_net_11225225value_net_11225227*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_value_net_layer_call_and_return_conditional_losses_112247392#
!value_net/StatefulPartitionedCall?
"policy_net/StatefulPartitionedCallStatefulPartitionedCalldrop3/PartitionedCall:output:0policy_net_11225230policy_net_11225232*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_policy_net_layer_call_and_return_conditional_losses_112247562$
"policy_net/StatefulPartitionedCall?
IdentityIdentity+policy_net/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity*value_net/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1?
NoOpNoOp^batch1/StatefulPartitionedCall^batch2/StatefulPartitionedCall^batch3/StatefulPartitionedCall^dense1/StatefulPartitionedCall^dense2/StatefulPartitionedCall^dense3/StatefulPartitionedCall#^policy_net/StatefulPartitionedCall"^value_net/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : : : 2@
batch1/StatefulPartitionedCallbatch1/StatefulPartitionedCall2@
batch2/StatefulPartitionedCallbatch2/StatefulPartitionedCall2@
batch3/StatefulPartitionedCallbatch3/StatefulPartitionedCall2@
dense1/StatefulPartitionedCalldense1/StatefulPartitionedCall2@
dense2/StatefulPartitionedCalldense2/StatefulPartitionedCall2@
dense3/StatefulPartitionedCalldense3/StatefulPartitionedCall2H
"policy_net/StatefulPartitionedCall"policy_net/StatefulPartitionedCall2F
!value_net/StatefulPartitionedCall!value_net/StatefulPartitionedCall:V R
+
_output_shapes
:?????????
#
_user_specified_name	state_7_4
?
^
B__inference_act3_layer_call_and_return_conditional_losses_11224719

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:??????????2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_noConv7x4_layer_call_fn_11225173
	state_7_4
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:
??

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:	?

unknown_18:

unknown_19:	?

unknown_20:
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall	state_7_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*2
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_noConv7x4_layer_call_and_return_conditional_losses_112250732
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
+
_output_shapes
:?????????
#
_user_specified_name	state_7_4
?

?
D__inference_dense1_layer_call_and_return_conditional_losses_11224621

inputs1
matmul_readvariableop_resource:	?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddl
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
C
	state_7_46
serving_default_state_7_4:0?????????>

policy_net0
StatefulPartitionedCall:0?????????=
	value_net0
StatefulPartitionedCall:1?????????tensorflow/serving/predict:??
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer-8

layer-9
layer_with_weights-4
layer-10
layer_with_weights-5
layer-11
layer-12
layer-13
layer_with_weights-6
layer-14
layer_with_weights-7
layer-15
	optimizer
loss

signatures
#_self_saveable_object_factories
trainable_variables
regularization_losses
	variables
	keras_api
?_default_save_signature
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_network
D
#_self_saveable_object_factories"
_tf_keras_input_layer
?
#_self_saveable_object_factories
trainable_variables
regularization_losses
	variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

kernel
 bias
#!_self_saveable_object_factories
"trainable_variables
#regularization_losses
$	variables
%	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
&axis
	'gamma
(beta
)moving_mean
*moving_variance
#+_self_saveable_object_factories
,trainable_variables
-regularization_losses
.	variables
/	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
#0_self_saveable_object_factories
1trainable_variables
2regularization_losses
3	variables
4	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
#5_self_saveable_object_factories
6trainable_variables
7regularization_losses
8	variables
9	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

:kernel
;bias
#<_self_saveable_object_factories
=trainable_variables
>regularization_losses
?	variables
@	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
Aaxis
	Bgamma
Cbeta
Dmoving_mean
Emoving_variance
#F_self_saveable_object_factories
Gtrainable_variables
Hregularization_losses
I	variables
J	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
#K_self_saveable_object_factories
Ltrainable_variables
Mregularization_losses
N	variables
O	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
#P_self_saveable_object_factories
Qtrainable_variables
Rregularization_losses
S	variables
T	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

Ukernel
Vbias
#W_self_saveable_object_factories
Xtrainable_variables
Yregularization_losses
Z	variables
[	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
\axis
	]gamma
^beta
_moving_mean
`moving_variance
#a_self_saveable_object_factories
btrainable_variables
cregularization_losses
d	variables
e	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
#f_self_saveable_object_factories
gtrainable_variables
hregularization_losses
i	variables
j	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
#k_self_saveable_object_factories
ltrainable_variables
mregularization_losses
n	variables
o	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

pkernel
qbias
#r_self_saveable_object_factories
strainable_variables
tregularization_losses
u	variables
v	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

wkernel
xbias
#y_self_saveable_object_factories
ztrainable_variables
{regularization_losses
|	variables
}	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
~iter

beta_1
?beta_2

?decay
?learning_ratem? m?'m?(m?:m?;m?Bm?Cm?Um?Vm?]m?^m?pm?qm?wm?xm?v? v?'v?(v?:v?;v?Bv?Cv?Uv?Vv?]v?^v?pv?qv?wv?xv?"
	optimizer
 "
trackable_list_wrapper
-
?serving_default"
signature_map
 "
trackable_dict_wrapper
?
0
 1
'2
(3
:4
;5
B6
C7
U8
V9
]10
^11
p12
q13
w14
x15"
trackable_list_wrapper
 "
trackable_list_wrapper
?
0
 1
'2
(3
)4
*5
:6
;7
B8
C9
D10
E11
U12
V13
]14
^15
_16
`17
p18
q19
w20
x21"
trackable_list_wrapper
?
?non_trainable_variables
?layers
trainable_variables
 ?layer_regularization_losses
regularization_losses
?layer_metrics
?metrics
	variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
trainable_variables
 ?layer_regularization_losses
?metrics
regularization_losses
?layer_metrics
?layers
	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :	?2dense1/kernel
:?2dense1/bias
 "
trackable_dict_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
?
?non_trainable_variables
"trainable_variables
 ?layer_regularization_losses
?metrics
#regularization_losses
?layer_metrics
?layers
$	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:?2batch1/gamma
:?2batch1/beta
#:!? (2batch1/moving_mean
':%? (2batch1/moving_variance
 "
trackable_dict_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
<
'0
(1
)2
*3"
trackable_list_wrapper
?
?non_trainable_variables
,trainable_variables
 ?layer_regularization_losses
?metrics
-regularization_losses
?layer_metrics
?layers
.	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
1trainable_variables
 ?layer_regularization_losses
?metrics
2regularization_losses
?layer_metrics
?layers
3	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
6trainable_variables
 ?layer_regularization_losses
?metrics
7regularization_losses
?layer_metrics
?layers
8	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:
??2dense2/kernel
:?2dense2/bias
 "
trackable_dict_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
?
?non_trainable_variables
=trainable_variables
 ?layer_regularization_losses
?metrics
>regularization_losses
?layer_metrics
?layers
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:?2batch2/gamma
:?2batch2/beta
#:!? (2batch2/moving_mean
':%? (2batch2/moving_variance
 "
trackable_dict_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
<
B0
C1
D2
E3"
trackable_list_wrapper
?
?non_trainable_variables
Gtrainable_variables
 ?layer_regularization_losses
?metrics
Hregularization_losses
?layer_metrics
?layers
I	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
Ltrainable_variables
 ?layer_regularization_losses
?metrics
Mregularization_losses
?layer_metrics
?layers
N	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
Qtrainable_variables
 ?layer_regularization_losses
?metrics
Rregularization_losses
?layer_metrics
?layers
S	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:
??2dense3/kernel
:?2dense3/bias
 "
trackable_dict_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
?
?non_trainable_variables
Xtrainable_variables
 ?layer_regularization_losses
?metrics
Yregularization_losses
?layer_metrics
?layers
Z	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:?2batch3/gamma
:?2batch3/beta
#:!? (2batch3/moving_mean
':%? (2batch3/moving_variance
 "
trackable_dict_wrapper
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
<
]0
^1
_2
`3"
trackable_list_wrapper
?
?non_trainable_variables
btrainable_variables
 ?layer_regularization_losses
?metrics
cregularization_losses
?layer_metrics
?layers
d	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
gtrainable_variables
 ?layer_regularization_losses
?metrics
hregularization_losses
?layer_metrics
?layers
i	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
ltrainable_variables
 ?layer_regularization_losses
?metrics
mregularization_losses
?layer_metrics
?layers
n	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
$:"	?2policy_net/kernel
:2policy_net/bias
 "
trackable_dict_wrapper
.
p0
q1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
p0
q1"
trackable_list_wrapper
?
?non_trainable_variables
strainable_variables
 ?layer_regularization_losses
?metrics
tregularization_losses
?layer_metrics
?layers
u	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!	?2value_net/kernel
:2value_net/bias
 "
trackable_dict_wrapper
.
w0
x1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
w0
x1"
trackable_list_wrapper
?
?non_trainable_variables
ztrainable_variables
 ?layer_regularization_losses
?metrics
{regularization_losses
?layer_metrics
?layers
|	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
J
)0
*1
D2
E3
_4
`5"
trackable_list_wrapper
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
8
?0
?1
?2"
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
.
)0
*1"
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
.
D0
E1"
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
.
_0
`1"
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
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
%:#	?2Adam/dense1/kernel/m
:?2Adam/dense1/bias/m
 :?2Adam/batch1/gamma/m
:?2Adam/batch1/beta/m
&:$
??2Adam/dense2/kernel/m
:?2Adam/dense2/bias/m
 :?2Adam/batch2/gamma/m
:?2Adam/batch2/beta/m
&:$
??2Adam/dense3/kernel/m
:?2Adam/dense3/bias/m
 :?2Adam/batch3/gamma/m
:?2Adam/batch3/beta/m
):'	?2Adam/policy_net/kernel/m
": 2Adam/policy_net/bias/m
(:&	?2Adam/value_net/kernel/m
!:2Adam/value_net/bias/m
%:#	?2Adam/dense1/kernel/v
:?2Adam/dense1/bias/v
 :?2Adam/batch1/gamma/v
:?2Adam/batch1/beta/v
&:$
??2Adam/dense2/kernel/v
:?2Adam/dense2/bias/v
 :?2Adam/batch2/gamma/v
:?2Adam/batch2/beta/v
&:$
??2Adam/dense3/kernel/v
:?2Adam/dense3/bias/v
 :?2Adam/batch3/gamma/v
:?2Adam/batch3/beta/v
):'	?2Adam/policy_net/kernel/v
": 2Adam/policy_net/bias/v
(:&	?2Adam/value_net/kernel/v
!:2Adam/value_net/bias/v
?B?
#__inference__wrapped_model_11224110	state_7_4"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_noConv7x4_layer_call_and_return_conditional_losses_11225453
G__inference_noConv7x4_layer_call_and_return_conditional_losses_11225609
G__inference_noConv7x4_layer_call_and_return_conditional_losses_11225237
G__inference_noConv7x4_layer_call_and_return_conditional_losses_11225301?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_noConv7x4_layer_call_fn_11224813
,__inference_noConv7x4_layer_call_fn_11225660
,__inference_noConv7x4_layer_call_fn_11225711
,__inference_noConv7x4_layer_call_fn_11225173?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_flatten_layer_call_and_return_conditional_losses_11225717?
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
*__inference_flatten_layer_call_fn_11225722?
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
D__inference_dense1_layer_call_and_return_conditional_losses_11225732?
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
)__inference_dense1_layer_call_fn_11225741?
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
?2?
D__inference_batch1_layer_call_and_return_conditional_losses_11225761
D__inference_batch1_layer_call_and_return_conditional_losses_11225795?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_batch1_layer_call_fn_11225808
)__inference_batch1_layer_call_fn_11225821?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_act1_layer_call_and_return_conditional_losses_11225826?
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
'__inference_act1_layer_call_fn_11225831?
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
?2?
C__inference_drop1_layer_call_and_return_conditional_losses_11225836
C__inference_drop1_layer_call_and_return_conditional_losses_11225848?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_drop1_layer_call_fn_11225853
(__inference_drop1_layer_call_fn_11225858?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dense2_layer_call_and_return_conditional_losses_11225868?
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
)__inference_dense2_layer_call_fn_11225877?
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
?2?
D__inference_batch2_layer_call_and_return_conditional_losses_11225897
D__inference_batch2_layer_call_and_return_conditional_losses_11225931?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_batch2_layer_call_fn_11225944
)__inference_batch2_layer_call_fn_11225957?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_act2_layer_call_and_return_conditional_losses_11225962?
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
'__inference_act2_layer_call_fn_11225967?
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
?2?
C__inference_drop2_layer_call_and_return_conditional_losses_11225972
C__inference_drop2_layer_call_and_return_conditional_losses_11225984?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_drop2_layer_call_fn_11225989
(__inference_drop2_layer_call_fn_11225994?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dense3_layer_call_and_return_conditional_losses_11226004?
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
)__inference_dense3_layer_call_fn_11226013?
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
?2?
D__inference_batch3_layer_call_and_return_conditional_losses_11226033
D__inference_batch3_layer_call_and_return_conditional_losses_11226067?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_batch3_layer_call_fn_11226080
)__inference_batch3_layer_call_fn_11226093?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_act3_layer_call_and_return_conditional_losses_11226098?
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
'__inference_act3_layer_call_fn_11226103?
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
?2?
C__inference_drop3_layer_call_and_return_conditional_losses_11226108
C__inference_drop3_layer_call_and_return_conditional_losses_11226120?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_drop3_layer_call_fn_11226125
(__inference_drop3_layer_call_fn_11226130?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_policy_net_layer_call_and_return_conditional_losses_11226141?
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
-__inference_policy_net_layer_call_fn_11226150?
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
G__inference_value_net_layer_call_and_return_conditional_losses_11226161?
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
,__inference_value_net_layer_call_fn_11226170?
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
?B?
&__inference_signature_wrapper_11225360	state_7_4"?
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
 ?
#__inference__wrapped_model_11224110? *')(:;EBDCUV`]_^wxpq6?3
,?)
'?$
	state_7_4?????????
? "i?f
2

policy_net$?!

policy_net?????????
0
	value_net#? 
	value_net??????????
B__inference_act1_layer_call_and_return_conditional_losses_11225826Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? x
'__inference_act1_layer_call_fn_11225831M0?-
&?#
!?
inputs??????????
? "????????????
B__inference_act2_layer_call_and_return_conditional_losses_11225962Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? x
'__inference_act2_layer_call_fn_11225967M0?-
&?#
!?
inputs??????????
? "????????????
B__inference_act3_layer_call_and_return_conditional_losses_11226098Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? x
'__inference_act3_layer_call_fn_11226103M0?-
&?#
!?
inputs??????????
? "????????????
D__inference_batch1_layer_call_and_return_conditional_losses_11225761d*')(4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
D__inference_batch1_layer_call_and_return_conditional_losses_11225795d)*'(4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
)__inference_batch1_layer_call_fn_11225808W*')(4?1
*?'
!?
inputs??????????
p 
? "????????????
)__inference_batch1_layer_call_fn_11225821W)*'(4?1
*?'
!?
inputs??????????
p
? "????????????
D__inference_batch2_layer_call_and_return_conditional_losses_11225897dEBDC4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
D__inference_batch2_layer_call_and_return_conditional_losses_11225931dDEBC4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
)__inference_batch2_layer_call_fn_11225944WEBDC4?1
*?'
!?
inputs??????????
p 
? "????????????
)__inference_batch2_layer_call_fn_11225957WDEBC4?1
*?'
!?
inputs??????????
p
? "????????????
D__inference_batch3_layer_call_and_return_conditional_losses_11226033d`]_^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
D__inference_batch3_layer_call_and_return_conditional_losses_11226067d_`]^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
)__inference_batch3_layer_call_fn_11226080W`]_^4?1
*?'
!?
inputs??????????
p 
? "????????????
)__inference_batch3_layer_call_fn_11226093W_`]^4?1
*?'
!?
inputs??????????
p
? "????????????
D__inference_dense1_layer_call_and_return_conditional_losses_11225732] /?,
%?"
 ?
inputs?????????
? "&?#
?
0??????????
? }
)__inference_dense1_layer_call_fn_11225741P /?,
%?"
 ?
inputs?????????
? "????????????
D__inference_dense2_layer_call_and_return_conditional_losses_11225868^:;0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ~
)__inference_dense2_layer_call_fn_11225877Q:;0?-
&?#
!?
inputs??????????
? "????????????
D__inference_dense3_layer_call_and_return_conditional_losses_11226004^UV0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ~
)__inference_dense3_layer_call_fn_11226013QUV0?-
&?#
!?
inputs??????????
? "????????????
C__inference_drop1_layer_call_and_return_conditional_losses_11225836^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
C__inference_drop1_layer_call_and_return_conditional_losses_11225848^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? }
(__inference_drop1_layer_call_fn_11225853Q4?1
*?'
!?
inputs??????????
p 
? "???????????}
(__inference_drop1_layer_call_fn_11225858Q4?1
*?'
!?
inputs??????????
p
? "????????????
C__inference_drop2_layer_call_and_return_conditional_losses_11225972^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
C__inference_drop2_layer_call_and_return_conditional_losses_11225984^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? }
(__inference_drop2_layer_call_fn_11225989Q4?1
*?'
!?
inputs??????????
p 
? "???????????}
(__inference_drop2_layer_call_fn_11225994Q4?1
*?'
!?
inputs??????????
p
? "????????????
C__inference_drop3_layer_call_and_return_conditional_losses_11226108^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
C__inference_drop3_layer_call_and_return_conditional_losses_11226120^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? }
(__inference_drop3_layer_call_fn_11226125Q4?1
*?'
!?
inputs??????????
p 
? "???????????}
(__inference_drop3_layer_call_fn_11226130Q4?1
*?'
!?
inputs??????????
p
? "????????????
E__inference_flatten_layer_call_and_return_conditional_losses_11225717\3?0
)?&
$?!
inputs?????????
? "%?"
?
0?????????
? }
*__inference_flatten_layer_call_fn_11225722O3?0
)?&
$?!
inputs?????????
? "???????????
G__inference_noConv7x4_layer_call_and_return_conditional_losses_11225237? *')(:;EBDCUV`]_^wxpq>?;
4?1
'?$
	state_7_4?????????
p 

 
? "K?H
A?>
?
0/0?????????
?
0/1?????????
? ?
G__inference_noConv7x4_layer_call_and_return_conditional_losses_11225301? )*'(:;DEBCUV_`]^wxpq>?;
4?1
'?$
	state_7_4?????????
p

 
? "K?H
A?>
?
0/0?????????
?
0/1?????????
? ?
G__inference_noConv7x4_layer_call_and_return_conditional_losses_11225453? *')(:;EBDCUV`]_^wxpq;?8
1?.
$?!
inputs?????????
p 

 
? "K?H
A?>
?
0/0?????????
?
0/1?????????
? ?
G__inference_noConv7x4_layer_call_and_return_conditional_losses_11225609? )*'(:;DEBCUV_`]^wxpq;?8
1?.
$?!
inputs?????????
p

 
? "K?H
A?>
?
0/0?????????
?
0/1?????????
? ?
,__inference_noConv7x4_layer_call_fn_11224813? *')(:;EBDCUV`]_^wxpq>?;
4?1
'?$
	state_7_4?????????
p 

 
? "=?:
?
0?????????
?
1??????????
,__inference_noConv7x4_layer_call_fn_11225173? )*'(:;DEBCUV_`]^wxpq>?;
4?1
'?$
	state_7_4?????????
p

 
? "=?:
?
0?????????
?
1??????????
,__inference_noConv7x4_layer_call_fn_11225660? *')(:;EBDCUV`]_^wxpq;?8
1?.
$?!
inputs?????????
p 

 
? "=?:
?
0?????????
?
1??????????
,__inference_noConv7x4_layer_call_fn_11225711? )*'(:;DEBCUV_`]^wxpq;?8
1?.
$?!
inputs?????????
p

 
? "=?:
?
0?????????
?
1??????????
H__inference_policy_net_layer_call_and_return_conditional_losses_11226141]pq0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? ?
-__inference_policy_net_layer_call_fn_11226150Ppq0?-
&?#
!?
inputs??????????
? "???????????
&__inference_signature_wrapper_11225360? *')(:;EBDCUV`]_^wxpqC?@
? 
9?6
4
	state_7_4'?$
	state_7_4?????????"i?f
2

policy_net$?!

policy_net?????????
0
	value_net#? 
	value_net??????????
G__inference_value_net_layer_call_and_return_conditional_losses_11226161]wx0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? ?
,__inference_value_net_layer_call_fn_11226170Pwx0?-
&?#
!?
inputs??????????
? "??????????