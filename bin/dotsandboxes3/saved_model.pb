
é¿
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
delete_old_dirsbool(
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
list(type)(0
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
list(type)(0
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
¾
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
executor_typestring 
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.5.02v2.5.0-0-ga4dfb8d1a718ßº
w
dense1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_namedense1/kernel
p
!dense1/kernel/Read/ReadVariableOpReadVariableOpdense1/kernel*
_output_shapes
:	*
dtype0
o
dense1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense1/bias
h
dense1/bias/Read/ReadVariableOpReadVariableOpdense1/bias*
_output_shapes	
:*
dtype0
q
batch1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namebatch1/gamma
j
 batch1/gamma/Read/ReadVariableOpReadVariableOpbatch1/gamma*
_output_shapes	
:*
dtype0
o
batch1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namebatch1/beta
h
batch1/beta/Read/ReadVariableOpReadVariableOpbatch1/beta*
_output_shapes	
:*
dtype0
}
batch1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_namebatch1/moving_mean
v
&batch1/moving_mean/Read/ReadVariableOpReadVariableOpbatch1/moving_mean*
_output_shapes	
:*
dtype0

batch1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_namebatch1/moving_variance
~
*batch1/moving_variance/Read/ReadVariableOpReadVariableOpbatch1/moving_variance*
_output_shapes	
:*
dtype0
x
dense2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense2/kernel
q
!dense2/kernel/Read/ReadVariableOpReadVariableOpdense2/kernel* 
_output_shapes
:
*
dtype0
o
dense2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense2/bias
h
dense2/bias/Read/ReadVariableOpReadVariableOpdense2/bias*
_output_shapes	
:*
dtype0
q
batch2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namebatch2/gamma
j
 batch2/gamma/Read/ReadVariableOpReadVariableOpbatch2/gamma*
_output_shapes	
:*
dtype0
o
batch2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namebatch2/beta
h
batch2/beta/Read/ReadVariableOpReadVariableOpbatch2/beta*
_output_shapes	
:*
dtype0
}
batch2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_namebatch2/moving_mean
v
&batch2/moving_mean/Read/ReadVariableOpReadVariableOpbatch2/moving_mean*
_output_shapes	
:*
dtype0

batch2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_namebatch2/moving_variance
~
*batch2/moving_variance/Read/ReadVariableOpReadVariableOpbatch2/moving_variance*
_output_shapes	
:*
dtype0
x
dense3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense3/kernel
q
!dense3/kernel/Read/ReadVariableOpReadVariableOpdense3/kernel* 
_output_shapes
:
*
dtype0
o
dense3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense3/bias
h
dense3/bias/Read/ReadVariableOpReadVariableOpdense3/bias*
_output_shapes	
:*
dtype0
q
batch3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namebatch3/gamma
j
 batch3/gamma/Read/ReadVariableOpReadVariableOpbatch3/gamma*
_output_shapes	
:*
dtype0
o
batch3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namebatch3/beta
h
batch3/beta/Read/ReadVariableOpReadVariableOpbatch3/beta*
_output_shapes	
:*
dtype0
}
batch3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_namebatch3/moving_mean
v
&batch3/moving_mean/Read/ReadVariableOpReadVariableOpbatch3/moving_mean*
_output_shapes	
:*
dtype0

batch3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_namebatch3/moving_variance
~
*batch3/moving_variance/Read/ReadVariableOpReadVariableOpbatch3/moving_variance*
_output_shapes	
:*
dtype0
x
dense4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense4/kernel
q
!dense4/kernel/Read/ReadVariableOpReadVariableOpdense4/kernel* 
_output_shapes
:
*
dtype0
o
dense4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense4/bias
h
dense4/bias/Read/ReadVariableOpReadVariableOpdense4/bias*
_output_shapes	
:*
dtype0
q
batch4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namebatch4/gamma
j
 batch4/gamma/Read/ReadVariableOpReadVariableOpbatch4/gamma*
_output_shapes	
:*
dtype0
o
batch4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namebatch4/beta
h
batch4/beta/Read/ReadVariableOpReadVariableOpbatch4/beta*
_output_shapes	
:*
dtype0
}
batch4/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_namebatch4/moving_mean
v
&batch4/moving_mean/Read/ReadVariableOpReadVariableOpbatch4/moving_mean*
_output_shapes	
:*
dtype0

batch4/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_namebatch4/moving_variance
~
*batch4/moving_variance/Read/ReadVariableOpReadVariableOpbatch4/moving_variance*
_output_shapes	
:*
dtype0

policy_net/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*"
shared_namepolicy_net/kernel
x
%policy_net/kernel/Read/ReadVariableOpReadVariableOppolicy_net/kernel*
_output_shapes
:	*
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
shape:	*!
shared_namevalue_net/kernel
v
$value_net/kernel/Read/ReadVariableOpReadVariableOpvalue_net/kernel*
_output_shapes
:	*
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

Adam/dense1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*%
shared_nameAdam/dense1/kernel/m
~
(Adam/dense1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense1/kernel/m*
_output_shapes
:	*
dtype0
}
Adam/dense1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/dense1/bias/m
v
&Adam/dense1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense1/bias/m*
_output_shapes	
:*
dtype0

Adam/batch1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/batch1/gamma/m
x
'Adam/batch1/gamma/m/Read/ReadVariableOpReadVariableOpAdam/batch1/gamma/m*
_output_shapes	
:*
dtype0
}
Adam/batch1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/batch1/beta/m
v
&Adam/batch1/beta/m/Read/ReadVariableOpReadVariableOpAdam/batch1/beta/m*
_output_shapes	
:*
dtype0

Adam/dense2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense2/kernel/m

(Adam/dense2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense2/kernel/m* 
_output_shapes
:
*
dtype0
}
Adam/dense2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/dense2/bias/m
v
&Adam/dense2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense2/bias/m*
_output_shapes	
:*
dtype0

Adam/batch2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/batch2/gamma/m
x
'Adam/batch2/gamma/m/Read/ReadVariableOpReadVariableOpAdam/batch2/gamma/m*
_output_shapes	
:*
dtype0
}
Adam/batch2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/batch2/beta/m
v
&Adam/batch2/beta/m/Read/ReadVariableOpReadVariableOpAdam/batch2/beta/m*
_output_shapes	
:*
dtype0

Adam/dense3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense3/kernel/m

(Adam/dense3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense3/kernel/m* 
_output_shapes
:
*
dtype0
}
Adam/dense3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/dense3/bias/m
v
&Adam/dense3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense3/bias/m*
_output_shapes	
:*
dtype0

Adam/batch3/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/batch3/gamma/m
x
'Adam/batch3/gamma/m/Read/ReadVariableOpReadVariableOpAdam/batch3/gamma/m*
_output_shapes	
:*
dtype0
}
Adam/batch3/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/batch3/beta/m
v
&Adam/batch3/beta/m/Read/ReadVariableOpReadVariableOpAdam/batch3/beta/m*
_output_shapes	
:*
dtype0

Adam/dense4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense4/kernel/m

(Adam/dense4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense4/kernel/m* 
_output_shapes
:
*
dtype0
}
Adam/dense4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/dense4/bias/m
v
&Adam/dense4/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense4/bias/m*
_output_shapes	
:*
dtype0

Adam/batch4/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/batch4/gamma/m
x
'Adam/batch4/gamma/m/Read/ReadVariableOpReadVariableOpAdam/batch4/gamma/m*
_output_shapes	
:*
dtype0
}
Adam/batch4/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/batch4/beta/m
v
&Adam/batch4/beta/m/Read/ReadVariableOpReadVariableOpAdam/batch4/beta/m*
_output_shapes	
:*
dtype0

Adam/policy_net/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*)
shared_nameAdam/policy_net/kernel/m

,Adam/policy_net/kernel/m/Read/ReadVariableOpReadVariableOpAdam/policy_net/kernel/m*
_output_shapes
:	*
dtype0

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

Adam/value_net/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*(
shared_nameAdam/value_net/kernel/m

+Adam/value_net/kernel/m/Read/ReadVariableOpReadVariableOpAdam/value_net/kernel/m*
_output_shapes
:	*
dtype0

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

Adam/dense1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*%
shared_nameAdam/dense1/kernel/v
~
(Adam/dense1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense1/kernel/v*
_output_shapes
:	*
dtype0
}
Adam/dense1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/dense1/bias/v
v
&Adam/dense1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense1/bias/v*
_output_shapes	
:*
dtype0

Adam/batch1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/batch1/gamma/v
x
'Adam/batch1/gamma/v/Read/ReadVariableOpReadVariableOpAdam/batch1/gamma/v*
_output_shapes	
:*
dtype0
}
Adam/batch1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/batch1/beta/v
v
&Adam/batch1/beta/v/Read/ReadVariableOpReadVariableOpAdam/batch1/beta/v*
_output_shapes	
:*
dtype0

Adam/dense2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense2/kernel/v

(Adam/dense2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense2/kernel/v* 
_output_shapes
:
*
dtype0
}
Adam/dense2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/dense2/bias/v
v
&Adam/dense2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense2/bias/v*
_output_shapes	
:*
dtype0

Adam/batch2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/batch2/gamma/v
x
'Adam/batch2/gamma/v/Read/ReadVariableOpReadVariableOpAdam/batch2/gamma/v*
_output_shapes	
:*
dtype0
}
Adam/batch2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/batch2/beta/v
v
&Adam/batch2/beta/v/Read/ReadVariableOpReadVariableOpAdam/batch2/beta/v*
_output_shapes	
:*
dtype0

Adam/dense3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense3/kernel/v

(Adam/dense3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense3/kernel/v* 
_output_shapes
:
*
dtype0
}
Adam/dense3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/dense3/bias/v
v
&Adam/dense3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense3/bias/v*
_output_shapes	
:*
dtype0

Adam/batch3/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/batch3/gamma/v
x
'Adam/batch3/gamma/v/Read/ReadVariableOpReadVariableOpAdam/batch3/gamma/v*
_output_shapes	
:*
dtype0
}
Adam/batch3/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/batch3/beta/v
v
&Adam/batch3/beta/v/Read/ReadVariableOpReadVariableOpAdam/batch3/beta/v*
_output_shapes	
:*
dtype0

Adam/dense4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense4/kernel/v

(Adam/dense4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense4/kernel/v* 
_output_shapes
:
*
dtype0
}
Adam/dense4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/dense4/bias/v
v
&Adam/dense4/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense4/bias/v*
_output_shapes	
:*
dtype0

Adam/batch4/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/batch4/gamma/v
x
'Adam/batch4/gamma/v/Read/ReadVariableOpReadVariableOpAdam/batch4/gamma/v*
_output_shapes	
:*
dtype0
}
Adam/batch4/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/batch4/beta/v
v
&Adam/batch4/beta/v/Read/ReadVariableOpReadVariableOpAdam/batch4/beta/v*
_output_shapes	
:*
dtype0

Adam/policy_net/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*)
shared_nameAdam/policy_net/kernel/v

,Adam/policy_net/kernel/v/Read/ReadVariableOpReadVariableOpAdam/policy_net/kernel/v*
_output_shapes
:	*
dtype0

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

Adam/value_net/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*(
shared_nameAdam/value_net/kernel/v

+Adam/value_net/kernel/v/Read/ReadVariableOpReadVariableOpAdam/value_net/kernel/v*
_output_shapes
:	*
dtype0

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
Ê
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueùBõ Bí

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
layer-16
layer-17
layer_with_weights-8
layer-18
layer_with_weights-9
layer-19
	optimizer
loss
regularization_losses
	variables
trainable_variables
	keras_api

signatures
 
R
regularization_losses
	variables
trainable_variables
	keras_api
h

 kernel
!bias
"regularization_losses
#	variables
$trainable_variables
%	keras_api

&axis
	'gamma
(beta
)moving_mean
*moving_variance
+regularization_losses
,	variables
-trainable_variables
.	keras_api
R
/regularization_losses
0	variables
1trainable_variables
2	keras_api
R
3regularization_losses
4	variables
5trainable_variables
6	keras_api
h

7kernel
8bias
9regularization_losses
:	variables
;trainable_variables
<	keras_api

=axis
	>gamma
?beta
@moving_mean
Amoving_variance
Bregularization_losses
C	variables
Dtrainable_variables
E	keras_api
R
Fregularization_losses
G	variables
Htrainable_variables
I	keras_api
R
Jregularization_losses
K	variables
Ltrainable_variables
M	keras_api
h

Nkernel
Obias
Pregularization_losses
Q	variables
Rtrainable_variables
S	keras_api

Taxis
	Ugamma
Vbeta
Wmoving_mean
Xmoving_variance
Yregularization_losses
Z	variables
[trainable_variables
\	keras_api
R
]regularization_losses
^	variables
_trainable_variables
`	keras_api
R
aregularization_losses
b	variables
ctrainable_variables
d	keras_api
h

ekernel
fbias
gregularization_losses
h	variables
itrainable_variables
j	keras_api

kaxis
	lgamma
mbeta
nmoving_mean
omoving_variance
pregularization_losses
q	variables
rtrainable_variables
s	keras_api
R
tregularization_losses
u	variables
vtrainable_variables
w	keras_api
R
xregularization_losses
y	variables
ztrainable_variables
{	keras_api
j

|kernel
}bias
~regularization_losses
	variables
trainable_variables
	keras_api
n
kernel
	bias
regularization_losses
	variables
trainable_variables
	keras_api
Ù
	iter
beta_1
beta_2

decay
learning_rate m!m'm(m7m8m>m?mNmOmUmVmemfmlmmm|m}m	m	m v!v'v(v7v8v>v?vNvOvUvVvev fv¡lv¢mv£|v¤}v¥	v¦	v§
 
 
Ø
 0
!1
'2
(3
)4
*5
76
87
>8
?9
@10
A11
N12
O13
U14
V15
W16
X17
e18
f19
l20
m21
n22
o23
|24
}25
26
27

 0
!1
'2
(3
74
85
>6
?7
N8
O9
U10
V11
e12
f13
l14
m15
|16
}17
18
19
²
metrics
non_trainable_variables
layer_metrics
regularization_losses
	variables
 layer_regularization_losses
layers
trainable_variables
 
 
 
 
²
metrics
non_trainable_variables
layer_metrics
regularization_losses
	variables
 layer_regularization_losses
layers
trainable_variables
YW
VARIABLE_VALUEdense1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

 0
!1

 0
!1
²
metrics
non_trainable_variables
layer_metrics
"regularization_losses
#	variables
 layer_regularization_losses
layers
$trainable_variables
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

'0
(1
)2
*3

'0
(1
²
metrics
non_trainable_variables
layer_metrics
+regularization_losses
,	variables
 layer_regularization_losses
 layers
-trainable_variables
 
 
 
²
¡metrics
¢non_trainable_variables
£layer_metrics
/regularization_losses
0	variables
 ¤layer_regularization_losses
¥layers
1trainable_variables
 
 
 
²
¦metrics
§non_trainable_variables
¨layer_metrics
3regularization_losses
4	variables
 ©layer_regularization_losses
ªlayers
5trainable_variables
YW
VARIABLE_VALUEdense2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

70
81

70
81
²
«metrics
¬non_trainable_variables
­layer_metrics
9regularization_losses
:	variables
 ®layer_regularization_losses
¯layers
;trainable_variables
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

>0
?1
@2
A3

>0
?1
²
°metrics
±non_trainable_variables
²layer_metrics
Bregularization_losses
C	variables
 ³layer_regularization_losses
´layers
Dtrainable_variables
 
 
 
²
µmetrics
¶non_trainable_variables
·layer_metrics
Fregularization_losses
G	variables
 ¸layer_regularization_losses
¹layers
Htrainable_variables
 
 
 
²
ºmetrics
»non_trainable_variables
¼layer_metrics
Jregularization_losses
K	variables
 ½layer_regularization_losses
¾layers
Ltrainable_variables
YW
VARIABLE_VALUEdense3/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense3/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

N0
O1

N0
O1
²
¿metrics
Ànon_trainable_variables
Álayer_metrics
Pregularization_losses
Q	variables
 Âlayer_regularization_losses
Ãlayers
Rtrainable_variables
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

U0
V1
W2
X3

U0
V1
²
Ämetrics
Ånon_trainable_variables
Ælayer_metrics
Yregularization_losses
Z	variables
 Çlayer_regularization_losses
Èlayers
[trainable_variables
 
 
 
²
Émetrics
Ênon_trainable_variables
Ëlayer_metrics
]regularization_losses
^	variables
 Ìlayer_regularization_losses
Ílayers
_trainable_variables
 
 
 
²
Îmetrics
Ïnon_trainable_variables
Ðlayer_metrics
aregularization_losses
b	variables
 Ñlayer_regularization_losses
Òlayers
ctrainable_variables
YW
VARIABLE_VALUEdense4/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense4/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

e0
f1

e0
f1
²
Ómetrics
Ônon_trainable_variables
Õlayer_metrics
gregularization_losses
h	variables
 Ölayer_regularization_losses
×layers
itrainable_variables
 
WU
VARIABLE_VALUEbatch4/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEbatch4/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEbatch4/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUEbatch4/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

l0
m1
n2
o3

l0
m1
²
Ømetrics
Ùnon_trainable_variables
Úlayer_metrics
pregularization_losses
q	variables
 Ûlayer_regularization_losses
Ülayers
rtrainable_variables
 
 
 
²
Ýmetrics
Þnon_trainable_variables
ßlayer_metrics
tregularization_losses
u	variables
 àlayer_regularization_losses
álayers
vtrainable_variables
 
 
 
²
âmetrics
ãnon_trainable_variables
älayer_metrics
xregularization_losses
y	variables
 ålayer_regularization_losses
ælayers
ztrainable_variables
][
VARIABLE_VALUEpolicy_net/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEpolicy_net/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
 

|0
}1

|0
}1
³
çmetrics
ènon_trainable_variables
élayer_metrics
~regularization_losses
	variables
 êlayer_regularization_losses
ëlayers
trainable_variables
\Z
VARIABLE_VALUEvalue_net/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEvalue_net/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
µ
ìmetrics
ínon_trainable_variables
îlayer_metrics
regularization_losses
	variables
 ïlayer_regularization_losses
ðlayers
trainable_variables
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

ñ0
ò1
ó2
8
)0
*1
@2
A3
W4
X5
n6
o7
 
 

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
16
17
18
19
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
@0
A1
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
W0
X1
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
n0
o1
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

ôtotal

õcount
ö	variables
÷	keras_api
8

øtotal

ùcount
ú	variables
û	keras_api
8

ütotal

ýcount
þ	variables
ÿ	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

ô0
õ1

ö	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE

ø0
ù1

ú	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE

ü0
ý1

þ	variables
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
|z
VARIABLE_VALUEAdam/dense4/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense4/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/batch4/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/batch4/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/policy_net/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/policy_net/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/value_net/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/value_net/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
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
|z
VARIABLE_VALUEAdam/dense4/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense4/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/batch4/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/batch4/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/policy_net/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/policy_net/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/value_net/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/value_net/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_state_7_4Placeholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ
Ö
StatefulPartitionedCallStatefulPartitionedCallserving_default_state_7_4dense1/kerneldense1/biasbatch1/moving_variancebatch1/gammabatch1/moving_meanbatch1/betadense2/kerneldense2/biasbatch2/moving_variancebatch2/gammabatch2/moving_meanbatch2/betadense3/kerneldense3/biasbatch3/moving_variancebatch3/gammabatch3/moving_meanbatch3/betadense4/kerneldense4/biasbatch4/moving_variancebatch4/gammabatch4/moving_meanbatch4/betavalue_net/kernelvalue_net/biaspolicy_net/kernelpolicy_net/bias*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8 *.
f)R'
%__inference_signature_wrapper_1810500
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
¿
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!dense1/kernel/Read/ReadVariableOpdense1/bias/Read/ReadVariableOp batch1/gamma/Read/ReadVariableOpbatch1/beta/Read/ReadVariableOp&batch1/moving_mean/Read/ReadVariableOp*batch1/moving_variance/Read/ReadVariableOp!dense2/kernel/Read/ReadVariableOpdense2/bias/Read/ReadVariableOp batch2/gamma/Read/ReadVariableOpbatch2/beta/Read/ReadVariableOp&batch2/moving_mean/Read/ReadVariableOp*batch2/moving_variance/Read/ReadVariableOp!dense3/kernel/Read/ReadVariableOpdense3/bias/Read/ReadVariableOp batch3/gamma/Read/ReadVariableOpbatch3/beta/Read/ReadVariableOp&batch3/moving_mean/Read/ReadVariableOp*batch3/moving_variance/Read/ReadVariableOp!dense4/kernel/Read/ReadVariableOpdense4/bias/Read/ReadVariableOp batch4/gamma/Read/ReadVariableOpbatch4/beta/Read/ReadVariableOp&batch4/moving_mean/Read/ReadVariableOp*batch4/moving_variance/Read/ReadVariableOp%policy_net/kernel/Read/ReadVariableOp#policy_net/bias/Read/ReadVariableOp$value_net/kernel/Read/ReadVariableOp"value_net/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp(Adam/dense1/kernel/m/Read/ReadVariableOp&Adam/dense1/bias/m/Read/ReadVariableOp'Adam/batch1/gamma/m/Read/ReadVariableOp&Adam/batch1/beta/m/Read/ReadVariableOp(Adam/dense2/kernel/m/Read/ReadVariableOp&Adam/dense2/bias/m/Read/ReadVariableOp'Adam/batch2/gamma/m/Read/ReadVariableOp&Adam/batch2/beta/m/Read/ReadVariableOp(Adam/dense3/kernel/m/Read/ReadVariableOp&Adam/dense3/bias/m/Read/ReadVariableOp'Adam/batch3/gamma/m/Read/ReadVariableOp&Adam/batch3/beta/m/Read/ReadVariableOp(Adam/dense4/kernel/m/Read/ReadVariableOp&Adam/dense4/bias/m/Read/ReadVariableOp'Adam/batch4/gamma/m/Read/ReadVariableOp&Adam/batch4/beta/m/Read/ReadVariableOp,Adam/policy_net/kernel/m/Read/ReadVariableOp*Adam/policy_net/bias/m/Read/ReadVariableOp+Adam/value_net/kernel/m/Read/ReadVariableOp)Adam/value_net/bias/m/Read/ReadVariableOp(Adam/dense1/kernel/v/Read/ReadVariableOp&Adam/dense1/bias/v/Read/ReadVariableOp'Adam/batch1/gamma/v/Read/ReadVariableOp&Adam/batch1/beta/v/Read/ReadVariableOp(Adam/dense2/kernel/v/Read/ReadVariableOp&Adam/dense2/bias/v/Read/ReadVariableOp'Adam/batch2/gamma/v/Read/ReadVariableOp&Adam/batch2/beta/v/Read/ReadVariableOp(Adam/dense3/kernel/v/Read/ReadVariableOp&Adam/dense3/bias/v/Read/ReadVariableOp'Adam/batch3/gamma/v/Read/ReadVariableOp&Adam/batch3/beta/v/Read/ReadVariableOp(Adam/dense4/kernel/v/Read/ReadVariableOp&Adam/dense4/bias/v/Read/ReadVariableOp'Adam/batch4/gamma/v/Read/ReadVariableOp&Adam/batch4/beta/v/Read/ReadVariableOp,Adam/policy_net/kernel/v/Read/ReadVariableOp*Adam/policy_net/bias/v/Read/ReadVariableOp+Adam/value_net/kernel/v/Read/ReadVariableOp)Adam/value_net/bias/v/Read/ReadVariableOpConst*\
TinU
S2Q	*
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
GPU2*0J 8 *)
f$R"
 __inference__traced_save_1811800

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense1/kerneldense1/biasbatch1/gammabatch1/betabatch1/moving_meanbatch1/moving_variancedense2/kerneldense2/biasbatch2/gammabatch2/betabatch2/moving_meanbatch2/moving_variancedense3/kerneldense3/biasbatch3/gammabatch3/betabatch3/moving_meanbatch3/moving_variancedense4/kerneldense4/biasbatch4/gammabatch4/betabatch4/moving_meanbatch4/moving_variancepolicy_net/kernelpolicy_net/biasvalue_net/kernelvalue_net/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1total_2count_2Adam/dense1/kernel/mAdam/dense1/bias/mAdam/batch1/gamma/mAdam/batch1/beta/mAdam/dense2/kernel/mAdam/dense2/bias/mAdam/batch2/gamma/mAdam/batch2/beta/mAdam/dense3/kernel/mAdam/dense3/bias/mAdam/batch3/gamma/mAdam/batch3/beta/mAdam/dense4/kernel/mAdam/dense4/bias/mAdam/batch4/gamma/mAdam/batch4/beta/mAdam/policy_net/kernel/mAdam/policy_net/bias/mAdam/value_net/kernel/mAdam/value_net/bias/mAdam/dense1/kernel/vAdam/dense1/bias/vAdam/batch1/gamma/vAdam/batch1/beta/vAdam/dense2/kernel/vAdam/dense2/bias/vAdam/batch2/gamma/vAdam/batch2/beta/vAdam/dense3/kernel/vAdam/dense3/bias/vAdam/batch3/gamma/vAdam/batch3/beta/vAdam/dense4/kernel/vAdam/dense4/bias/vAdam/batch4/gamma/vAdam/batch4/beta/vAdam/policy_net/kernel/vAdam/policy_net/bias/vAdam/value_net/kernel/vAdam/value_net/bias/v*[
TinT
R2P*
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
GPU2*0J 8 *,
f'R%
#__inference__traced_restore_1812047ð
*
à
C__inference_batch1_layer_call_and_return_conditional_losses_1808986

inputs6
'assignmovingavg_readvariableop_resource:	8
)assignmovingavg_1_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	2
moments/StopGradient¥
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices³
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay¥
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/mul¿
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
×#<2
AssignMovingAvg_1/decay«
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp¡
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/mulÉ
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
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
§

,__inference_policy_net_layer_call_fn_1811508

inputs
unknown:	
	unknown_0:
identity¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_policy_net_layer_call_and_return_conditional_losses_18097492
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
]
Ô
F__inference_noConv7x4_layer_call_and_return_conditional_losses_1810429
	state_7_4!
dense1_1810353:	
dense1_1810355:	
batch1_1810358:	
batch1_1810360:	
batch1_1810362:	
batch1_1810364:	"
dense2_1810369:

dense2_1810371:	
batch2_1810374:	
batch2_1810376:	
batch2_1810378:	
batch2_1810380:	"
dense3_1810385:

dense3_1810387:	
batch3_1810390:	
batch3_1810392:	
batch3_1810394:	
batch3_1810396:	"
dense4_1810401:

dense4_1810403:	
batch4_1810406:	
batch4_1810408:	
batch4_1810410:	
batch4_1810412:	$
value_net_1810417:	
value_net_1810419:%
policy_net_1810422:	 
policy_net_1810424:
identity

identity_1¢batch1/StatefulPartitionedCall¢batch2/StatefulPartitionedCall¢batch3/StatefulPartitionedCall¢batch4/StatefulPartitionedCall¢dense1/StatefulPartitionedCall¢dense2/StatefulPartitionedCall¢dense3/StatefulPartitionedCall¢dense4/StatefulPartitionedCall¢drop1/StatefulPartitionedCall¢drop2/StatefulPartitionedCall¢drop3/StatefulPartitionedCall¢drop4/StatefulPartitionedCall¢"policy_net/StatefulPartitionedCall¢!value_net/StatefulPartitionedCallØ
flatten/PartitionedCallPartitionedCall	state_7_4*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_18095632
flatten/PartitionedCall«
dense1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense1_1810353dense1_1810355*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense1_layer_call_and_return_conditional_losses_18095752 
dense1/StatefulPartitionedCallÔ
batch1/StatefulPartitionedCallStatefulPartitionedCall'dense1/StatefulPartitionedCall:output:0batch1_1810358batch1_1810360batch1_1810362batch1_1810364*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_batch1_layer_call_and_return_conditional_losses_18089862 
batch1/StatefulPartitionedCallî
act1/PartitionedCallPartitionedCall'batch1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_act1_layer_call_and_return_conditional_losses_18095952
act1/PartitionedCallÿ
drop1/StatefulPartitionedCallStatefulPartitionedCallact1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_drop1_layer_call_and_return_conditional_losses_18099752
drop1/StatefulPartitionedCall±
dense2/StatefulPartitionedCallStatefulPartitionedCall&drop1/StatefulPartitionedCall:output:0dense2_1810369dense2_1810371*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense2_layer_call_and_return_conditional_losses_18096142 
dense2/StatefulPartitionedCallÔ
batch2/StatefulPartitionedCallStatefulPartitionedCall'dense2/StatefulPartitionedCall:output:0batch2_1810374batch2_1810376batch2_1810378batch2_1810380*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_batch2_layer_call_and_return_conditional_losses_18091482 
batch2/StatefulPartitionedCallî
act2/PartitionedCallPartitionedCall'batch2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_act2_layer_call_and_return_conditional_losses_18096342
act2/PartitionedCall
drop2/StatefulPartitionedCallStatefulPartitionedCallact2/PartitionedCall:output:0^drop1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_drop2_layer_call_and_return_conditional_losses_18099362
drop2/StatefulPartitionedCall±
dense3/StatefulPartitionedCallStatefulPartitionedCall&drop2/StatefulPartitionedCall:output:0dense3_1810385dense3_1810387*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense3_layer_call_and_return_conditional_losses_18096532 
dense3/StatefulPartitionedCallÔ
batch3/StatefulPartitionedCallStatefulPartitionedCall'dense3/StatefulPartitionedCall:output:0batch3_1810390batch3_1810392batch3_1810394batch3_1810396*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_batch3_layer_call_and_return_conditional_losses_18093102 
batch3/StatefulPartitionedCallî
act3/PartitionedCallPartitionedCall'batch3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_act3_layer_call_and_return_conditional_losses_18096732
act3/PartitionedCall
drop3/StatefulPartitionedCallStatefulPartitionedCallact3/PartitionedCall:output:0^drop2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_drop3_layer_call_and_return_conditional_losses_18098972
drop3/StatefulPartitionedCall±
dense4/StatefulPartitionedCallStatefulPartitionedCall&drop3/StatefulPartitionedCall:output:0dense4_1810401dense4_1810403*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense4_layer_call_and_return_conditional_losses_18096922 
dense4/StatefulPartitionedCallÔ
batch4/StatefulPartitionedCallStatefulPartitionedCall'dense4/StatefulPartitionedCall:output:0batch4_1810406batch4_1810408batch4_1810410batch4_1810412*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_batch4_layer_call_and_return_conditional_losses_18094722 
batch4/StatefulPartitionedCallî
act4/PartitionedCallPartitionedCall'batch4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_act4_layer_call_and_return_conditional_losses_18097122
act4/PartitionedCall
drop4/StatefulPartitionedCallStatefulPartitionedCallact4/PartitionedCall:output:0^drop3/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_drop4_layer_call_and_return_conditional_losses_18098582
drop4/StatefulPartitionedCall¿
!value_net/StatefulPartitionedCallStatefulPartitionedCall&drop4/StatefulPartitionedCall:output:0value_net_1810417value_net_1810419*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_value_net_layer_call_and_return_conditional_losses_18097322#
!value_net/StatefulPartitionedCallÄ
"policy_net/StatefulPartitionedCallStatefulPartitionedCall&drop4/StatefulPartitionedCall:output:0policy_net_1810422policy_net_1810424*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_policy_net_layer_call_and_return_conditional_losses_18097492$
"policy_net/StatefulPartitionedCallÐ
IdentityIdentity+policy_net/StatefulPartitionedCall:output:0^batch1/StatefulPartitionedCall^batch2/StatefulPartitionedCall^batch3/StatefulPartitionedCall^batch4/StatefulPartitionedCall^dense1/StatefulPartitionedCall^dense2/StatefulPartitionedCall^dense3/StatefulPartitionedCall^dense4/StatefulPartitionedCall^drop1/StatefulPartitionedCall^drop2/StatefulPartitionedCall^drop3/StatefulPartitionedCall^drop4/StatefulPartitionedCall#^policy_net/StatefulPartitionedCall"^value_net/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÓ

Identity_1Identity*value_net/StatefulPartitionedCall:output:0^batch1/StatefulPartitionedCall^batch2/StatefulPartitionedCall^batch3/StatefulPartitionedCall^batch4/StatefulPartitionedCall^dense1/StatefulPartitionedCall^dense2/StatefulPartitionedCall^dense3/StatefulPartitionedCall^dense4/StatefulPartitionedCall^drop1/StatefulPartitionedCall^drop2/StatefulPartitionedCall^drop3/StatefulPartitionedCall^drop4/StatefulPartitionedCall#^policy_net/StatefulPartitionedCall"^value_net/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
batch1/StatefulPartitionedCallbatch1/StatefulPartitionedCall2@
batch2/StatefulPartitionedCallbatch2/StatefulPartitionedCall2@
batch3/StatefulPartitionedCallbatch3/StatefulPartitionedCall2@
batch4/StatefulPartitionedCallbatch4/StatefulPartitionedCall2@
dense1/StatefulPartitionedCalldense1/StatefulPartitionedCall2@
dense2/StatefulPartitionedCalldense2/StatefulPartitionedCall2@
dense3/StatefulPartitionedCalldense3/StatefulPartitionedCall2@
dense4/StatefulPartitionedCalldense4/StatefulPartitionedCall2>
drop1/StatefulPartitionedCalldrop1/StatefulPartitionedCall2>
drop2/StatefulPartitionedCalldrop2/StatefulPartitionedCall2>
drop3/StatefulPartitionedCalldrop3/StatefulPartitionedCall2>
drop4/StatefulPartitionedCalldrop4/StatefulPartitionedCall2H
"policy_net/StatefulPartitionedCall"policy_net/StatefulPartitionedCall2F
!value_net/StatefulPartitionedCall!value_net/StatefulPartitionedCall:V R
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#
_user_specified_name	state_7_4
Ü
`
D__inference_flatten_layer_call_and_return_conditional_losses_1810955

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¿
C
'__inference_drop4_layer_call_fn_1811477

inputs
identityÄ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_drop4_layer_call_and_return_conditional_losses_18097192
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¥

+__inference_value_net_layer_call_fn_1811528

inputs
unknown:	
	unknown_0:
identity¢StatefulPartitionedCallù
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_value_net_layer_call_and_return_conditional_losses_18097322
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÖÁ
±
"__inference__wrapped_model_1808902
	state_7_4B
/noconv7x4_dense1_matmul_readvariableop_resource:	?
0noconv7x4_dense1_biasadd_readvariableop_resource:	A
2noconv7x4_batch1_batchnorm_readvariableop_resource:	E
6noconv7x4_batch1_batchnorm_mul_readvariableop_resource:	C
4noconv7x4_batch1_batchnorm_readvariableop_1_resource:	C
4noconv7x4_batch1_batchnorm_readvariableop_2_resource:	C
/noconv7x4_dense2_matmul_readvariableop_resource:
?
0noconv7x4_dense2_biasadd_readvariableop_resource:	A
2noconv7x4_batch2_batchnorm_readvariableop_resource:	E
6noconv7x4_batch2_batchnorm_mul_readvariableop_resource:	C
4noconv7x4_batch2_batchnorm_readvariableop_1_resource:	C
4noconv7x4_batch2_batchnorm_readvariableop_2_resource:	C
/noconv7x4_dense3_matmul_readvariableop_resource:
?
0noconv7x4_dense3_biasadd_readvariableop_resource:	A
2noconv7x4_batch3_batchnorm_readvariableop_resource:	E
6noconv7x4_batch3_batchnorm_mul_readvariableop_resource:	C
4noconv7x4_batch3_batchnorm_readvariableop_1_resource:	C
4noconv7x4_batch3_batchnorm_readvariableop_2_resource:	C
/noconv7x4_dense4_matmul_readvariableop_resource:
?
0noconv7x4_dense4_biasadd_readvariableop_resource:	A
2noconv7x4_batch4_batchnorm_readvariableop_resource:	E
6noconv7x4_batch4_batchnorm_mul_readvariableop_resource:	C
4noconv7x4_batch4_batchnorm_readvariableop_1_resource:	C
4noconv7x4_batch4_batchnorm_readvariableop_2_resource:	E
2noconv7x4_value_net_matmul_readvariableop_resource:	A
3noconv7x4_value_net_biasadd_readvariableop_resource:F
3noconv7x4_policy_net_matmul_readvariableop_resource:	B
4noconv7x4_policy_net_biasadd_readvariableop_resource:
identity

identity_1¢)noConv7x4/batch1/batchnorm/ReadVariableOp¢+noConv7x4/batch1/batchnorm/ReadVariableOp_1¢+noConv7x4/batch1/batchnorm/ReadVariableOp_2¢-noConv7x4/batch1/batchnorm/mul/ReadVariableOp¢)noConv7x4/batch2/batchnorm/ReadVariableOp¢+noConv7x4/batch2/batchnorm/ReadVariableOp_1¢+noConv7x4/batch2/batchnorm/ReadVariableOp_2¢-noConv7x4/batch2/batchnorm/mul/ReadVariableOp¢)noConv7x4/batch3/batchnorm/ReadVariableOp¢+noConv7x4/batch3/batchnorm/ReadVariableOp_1¢+noConv7x4/batch3/batchnorm/ReadVariableOp_2¢-noConv7x4/batch3/batchnorm/mul/ReadVariableOp¢)noConv7x4/batch4/batchnorm/ReadVariableOp¢+noConv7x4/batch4/batchnorm/ReadVariableOp_1¢+noConv7x4/batch4/batchnorm/ReadVariableOp_2¢-noConv7x4/batch4/batchnorm/mul/ReadVariableOp¢'noConv7x4/dense1/BiasAdd/ReadVariableOp¢&noConv7x4/dense1/MatMul/ReadVariableOp¢'noConv7x4/dense2/BiasAdd/ReadVariableOp¢&noConv7x4/dense2/MatMul/ReadVariableOp¢'noConv7x4/dense3/BiasAdd/ReadVariableOp¢&noConv7x4/dense3/MatMul/ReadVariableOp¢'noConv7x4/dense4/BiasAdd/ReadVariableOp¢&noConv7x4/dense4/MatMul/ReadVariableOp¢+noConv7x4/policy_net/BiasAdd/ReadVariableOp¢*noConv7x4/policy_net/MatMul/ReadVariableOp¢*noConv7x4/value_net/BiasAdd/ReadVariableOp¢)noConv7x4/value_net/MatMul/ReadVariableOp
noConv7x4/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
noConv7x4/flatten/Const 
noConv7x4/flatten/ReshapeReshape	state_7_4 noConv7x4/flatten/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
noConv7x4/flatten/ReshapeÁ
&noConv7x4/dense1/MatMul/ReadVariableOpReadVariableOp/noconv7x4_dense1_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02(
&noConv7x4/dense1/MatMul/ReadVariableOpÃ
noConv7x4/dense1/MatMulMatMul"noConv7x4/flatten/Reshape:output:0.noConv7x4/dense1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
noConv7x4/dense1/MatMulÀ
'noConv7x4/dense1/BiasAdd/ReadVariableOpReadVariableOp0noconv7x4_dense1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02)
'noConv7x4/dense1/BiasAdd/ReadVariableOpÆ
noConv7x4/dense1/BiasAddBiasAdd!noConv7x4/dense1/MatMul:product:0/noConv7x4/dense1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
noConv7x4/dense1/BiasAddÆ
)noConv7x4/batch1/batchnorm/ReadVariableOpReadVariableOp2noconv7x4_batch1_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02+
)noConv7x4/batch1/batchnorm/ReadVariableOp
 noConv7x4/batch1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2"
 noConv7x4/batch1/batchnorm/add/yÍ
noConv7x4/batch1/batchnorm/addAddV21noConv7x4/batch1/batchnorm/ReadVariableOp:value:0)noConv7x4/batch1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2 
noConv7x4/batch1/batchnorm/add
 noConv7x4/batch1/batchnorm/RsqrtRsqrt"noConv7x4/batch1/batchnorm/add:z:0*
T0*
_output_shapes	
:2"
 noConv7x4/batch1/batchnorm/RsqrtÒ
-noConv7x4/batch1/batchnorm/mul/ReadVariableOpReadVariableOp6noconv7x4_batch1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02/
-noConv7x4/batch1/batchnorm/mul/ReadVariableOpÊ
noConv7x4/batch1/batchnorm/mulMul$noConv7x4/batch1/batchnorm/Rsqrt:y:05noConv7x4/batch1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2 
noConv7x4/batch1/batchnorm/mulÅ
 noConv7x4/batch1/batchnorm/mul_1Mul!noConv7x4/dense1/BiasAdd:output:0"noConv7x4/batch1/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 noConv7x4/batch1/batchnorm/mul_1Ì
+noConv7x4/batch1/batchnorm/ReadVariableOp_1ReadVariableOp4noconv7x4_batch1_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02-
+noConv7x4/batch1/batchnorm/ReadVariableOp_1Ê
 noConv7x4/batch1/batchnorm/mul_2Mul3noConv7x4/batch1/batchnorm/ReadVariableOp_1:value:0"noConv7x4/batch1/batchnorm/mul:z:0*
T0*
_output_shapes	
:2"
 noConv7x4/batch1/batchnorm/mul_2Ì
+noConv7x4/batch1/batchnorm/ReadVariableOp_2ReadVariableOp4noconv7x4_batch1_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02-
+noConv7x4/batch1/batchnorm/ReadVariableOp_2È
noConv7x4/batch1/batchnorm/subSub3noConv7x4/batch1/batchnorm/ReadVariableOp_2:value:0$noConv7x4/batch1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2 
noConv7x4/batch1/batchnorm/subÊ
 noConv7x4/batch1/batchnorm/add_1AddV2$noConv7x4/batch1/batchnorm/mul_1:z:0"noConv7x4/batch1/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 noConv7x4/batch1/batchnorm/add_1
noConv7x4/act1/ReluRelu$noConv7x4/batch1/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
noConv7x4/act1/Relu
noConv7x4/drop1/IdentityIdentity!noConv7x4/act1/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
noConv7x4/drop1/IdentityÂ
&noConv7x4/dense2/MatMul/ReadVariableOpReadVariableOp/noconv7x4_dense2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02(
&noConv7x4/dense2/MatMul/ReadVariableOpÂ
noConv7x4/dense2/MatMulMatMul!noConv7x4/drop1/Identity:output:0.noConv7x4/dense2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
noConv7x4/dense2/MatMulÀ
'noConv7x4/dense2/BiasAdd/ReadVariableOpReadVariableOp0noconv7x4_dense2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02)
'noConv7x4/dense2/BiasAdd/ReadVariableOpÆ
noConv7x4/dense2/BiasAddBiasAdd!noConv7x4/dense2/MatMul:product:0/noConv7x4/dense2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
noConv7x4/dense2/BiasAddÆ
)noConv7x4/batch2/batchnorm/ReadVariableOpReadVariableOp2noconv7x4_batch2_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02+
)noConv7x4/batch2/batchnorm/ReadVariableOp
 noConv7x4/batch2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2"
 noConv7x4/batch2/batchnorm/add/yÍ
noConv7x4/batch2/batchnorm/addAddV21noConv7x4/batch2/batchnorm/ReadVariableOp:value:0)noConv7x4/batch2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2 
noConv7x4/batch2/batchnorm/add
 noConv7x4/batch2/batchnorm/RsqrtRsqrt"noConv7x4/batch2/batchnorm/add:z:0*
T0*
_output_shapes	
:2"
 noConv7x4/batch2/batchnorm/RsqrtÒ
-noConv7x4/batch2/batchnorm/mul/ReadVariableOpReadVariableOp6noconv7x4_batch2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02/
-noConv7x4/batch2/batchnorm/mul/ReadVariableOpÊ
noConv7x4/batch2/batchnorm/mulMul$noConv7x4/batch2/batchnorm/Rsqrt:y:05noConv7x4/batch2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2 
noConv7x4/batch2/batchnorm/mulÅ
 noConv7x4/batch2/batchnorm/mul_1Mul!noConv7x4/dense2/BiasAdd:output:0"noConv7x4/batch2/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 noConv7x4/batch2/batchnorm/mul_1Ì
+noConv7x4/batch2/batchnorm/ReadVariableOp_1ReadVariableOp4noconv7x4_batch2_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02-
+noConv7x4/batch2/batchnorm/ReadVariableOp_1Ê
 noConv7x4/batch2/batchnorm/mul_2Mul3noConv7x4/batch2/batchnorm/ReadVariableOp_1:value:0"noConv7x4/batch2/batchnorm/mul:z:0*
T0*
_output_shapes	
:2"
 noConv7x4/batch2/batchnorm/mul_2Ì
+noConv7x4/batch2/batchnorm/ReadVariableOp_2ReadVariableOp4noconv7x4_batch2_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02-
+noConv7x4/batch2/batchnorm/ReadVariableOp_2È
noConv7x4/batch2/batchnorm/subSub3noConv7x4/batch2/batchnorm/ReadVariableOp_2:value:0$noConv7x4/batch2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2 
noConv7x4/batch2/batchnorm/subÊ
 noConv7x4/batch2/batchnorm/add_1AddV2$noConv7x4/batch2/batchnorm/mul_1:z:0"noConv7x4/batch2/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 noConv7x4/batch2/batchnorm/add_1
noConv7x4/act2/ReluRelu$noConv7x4/batch2/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
noConv7x4/act2/Relu
noConv7x4/drop2/IdentityIdentity!noConv7x4/act2/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
noConv7x4/drop2/IdentityÂ
&noConv7x4/dense3/MatMul/ReadVariableOpReadVariableOp/noconv7x4_dense3_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02(
&noConv7x4/dense3/MatMul/ReadVariableOpÂ
noConv7x4/dense3/MatMulMatMul!noConv7x4/drop2/Identity:output:0.noConv7x4/dense3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
noConv7x4/dense3/MatMulÀ
'noConv7x4/dense3/BiasAdd/ReadVariableOpReadVariableOp0noconv7x4_dense3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02)
'noConv7x4/dense3/BiasAdd/ReadVariableOpÆ
noConv7x4/dense3/BiasAddBiasAdd!noConv7x4/dense3/MatMul:product:0/noConv7x4/dense3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
noConv7x4/dense3/BiasAddÆ
)noConv7x4/batch3/batchnorm/ReadVariableOpReadVariableOp2noconv7x4_batch3_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02+
)noConv7x4/batch3/batchnorm/ReadVariableOp
 noConv7x4/batch3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2"
 noConv7x4/batch3/batchnorm/add/yÍ
noConv7x4/batch3/batchnorm/addAddV21noConv7x4/batch3/batchnorm/ReadVariableOp:value:0)noConv7x4/batch3/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2 
noConv7x4/batch3/batchnorm/add
 noConv7x4/batch3/batchnorm/RsqrtRsqrt"noConv7x4/batch3/batchnorm/add:z:0*
T0*
_output_shapes	
:2"
 noConv7x4/batch3/batchnorm/RsqrtÒ
-noConv7x4/batch3/batchnorm/mul/ReadVariableOpReadVariableOp6noconv7x4_batch3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02/
-noConv7x4/batch3/batchnorm/mul/ReadVariableOpÊ
noConv7x4/batch3/batchnorm/mulMul$noConv7x4/batch3/batchnorm/Rsqrt:y:05noConv7x4/batch3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2 
noConv7x4/batch3/batchnorm/mulÅ
 noConv7x4/batch3/batchnorm/mul_1Mul!noConv7x4/dense3/BiasAdd:output:0"noConv7x4/batch3/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 noConv7x4/batch3/batchnorm/mul_1Ì
+noConv7x4/batch3/batchnorm/ReadVariableOp_1ReadVariableOp4noconv7x4_batch3_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02-
+noConv7x4/batch3/batchnorm/ReadVariableOp_1Ê
 noConv7x4/batch3/batchnorm/mul_2Mul3noConv7x4/batch3/batchnorm/ReadVariableOp_1:value:0"noConv7x4/batch3/batchnorm/mul:z:0*
T0*
_output_shapes	
:2"
 noConv7x4/batch3/batchnorm/mul_2Ì
+noConv7x4/batch3/batchnorm/ReadVariableOp_2ReadVariableOp4noconv7x4_batch3_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02-
+noConv7x4/batch3/batchnorm/ReadVariableOp_2È
noConv7x4/batch3/batchnorm/subSub3noConv7x4/batch3/batchnorm/ReadVariableOp_2:value:0$noConv7x4/batch3/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2 
noConv7x4/batch3/batchnorm/subÊ
 noConv7x4/batch3/batchnorm/add_1AddV2$noConv7x4/batch3/batchnorm/mul_1:z:0"noConv7x4/batch3/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 noConv7x4/batch3/batchnorm/add_1
noConv7x4/act3/ReluRelu$noConv7x4/batch3/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
noConv7x4/act3/Relu
noConv7x4/drop3/IdentityIdentity!noConv7x4/act3/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
noConv7x4/drop3/IdentityÂ
&noConv7x4/dense4/MatMul/ReadVariableOpReadVariableOp/noconv7x4_dense4_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02(
&noConv7x4/dense4/MatMul/ReadVariableOpÂ
noConv7x4/dense4/MatMulMatMul!noConv7x4/drop3/Identity:output:0.noConv7x4/dense4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
noConv7x4/dense4/MatMulÀ
'noConv7x4/dense4/BiasAdd/ReadVariableOpReadVariableOp0noconv7x4_dense4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02)
'noConv7x4/dense4/BiasAdd/ReadVariableOpÆ
noConv7x4/dense4/BiasAddBiasAdd!noConv7x4/dense4/MatMul:product:0/noConv7x4/dense4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
noConv7x4/dense4/BiasAddÆ
)noConv7x4/batch4/batchnorm/ReadVariableOpReadVariableOp2noconv7x4_batch4_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02+
)noConv7x4/batch4/batchnorm/ReadVariableOp
 noConv7x4/batch4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2"
 noConv7x4/batch4/batchnorm/add/yÍ
noConv7x4/batch4/batchnorm/addAddV21noConv7x4/batch4/batchnorm/ReadVariableOp:value:0)noConv7x4/batch4/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2 
noConv7x4/batch4/batchnorm/add
 noConv7x4/batch4/batchnorm/RsqrtRsqrt"noConv7x4/batch4/batchnorm/add:z:0*
T0*
_output_shapes	
:2"
 noConv7x4/batch4/batchnorm/RsqrtÒ
-noConv7x4/batch4/batchnorm/mul/ReadVariableOpReadVariableOp6noconv7x4_batch4_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02/
-noConv7x4/batch4/batchnorm/mul/ReadVariableOpÊ
noConv7x4/batch4/batchnorm/mulMul$noConv7x4/batch4/batchnorm/Rsqrt:y:05noConv7x4/batch4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2 
noConv7x4/batch4/batchnorm/mulÅ
 noConv7x4/batch4/batchnorm/mul_1Mul!noConv7x4/dense4/BiasAdd:output:0"noConv7x4/batch4/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 noConv7x4/batch4/batchnorm/mul_1Ì
+noConv7x4/batch4/batchnorm/ReadVariableOp_1ReadVariableOp4noconv7x4_batch4_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02-
+noConv7x4/batch4/batchnorm/ReadVariableOp_1Ê
 noConv7x4/batch4/batchnorm/mul_2Mul3noConv7x4/batch4/batchnorm/ReadVariableOp_1:value:0"noConv7x4/batch4/batchnorm/mul:z:0*
T0*
_output_shapes	
:2"
 noConv7x4/batch4/batchnorm/mul_2Ì
+noConv7x4/batch4/batchnorm/ReadVariableOp_2ReadVariableOp4noconv7x4_batch4_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02-
+noConv7x4/batch4/batchnorm/ReadVariableOp_2È
noConv7x4/batch4/batchnorm/subSub3noConv7x4/batch4/batchnorm/ReadVariableOp_2:value:0$noConv7x4/batch4/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2 
noConv7x4/batch4/batchnorm/subÊ
 noConv7x4/batch4/batchnorm/add_1AddV2$noConv7x4/batch4/batchnorm/mul_1:z:0"noConv7x4/batch4/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 noConv7x4/batch4/batchnorm/add_1
noConv7x4/act4/ReluRelu$noConv7x4/batch4/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
noConv7x4/act4/Relu
noConv7x4/drop4/IdentityIdentity!noConv7x4/act4/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
noConv7x4/drop4/IdentityÊ
)noConv7x4/value_net/MatMul/ReadVariableOpReadVariableOp2noconv7x4_value_net_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02+
)noConv7x4/value_net/MatMul/ReadVariableOpÊ
noConv7x4/value_net/MatMulMatMul!noConv7x4/drop4/Identity:output:01noConv7x4/value_net/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
noConv7x4/value_net/MatMulÈ
*noConv7x4/value_net/BiasAdd/ReadVariableOpReadVariableOp3noconv7x4_value_net_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*noConv7x4/value_net/BiasAdd/ReadVariableOpÑ
noConv7x4/value_net/BiasAddBiasAdd$noConv7x4/value_net/MatMul:product:02noConv7x4/value_net/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
noConv7x4/value_net/BiasAdd
noConv7x4/value_net/TanhTanh$noConv7x4/value_net/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
noConv7x4/value_net/TanhÍ
*noConv7x4/policy_net/MatMul/ReadVariableOpReadVariableOp3noconv7x4_policy_net_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02,
*noConv7x4/policy_net/MatMul/ReadVariableOpÍ
noConv7x4/policy_net/MatMulMatMul!noConv7x4/drop4/Identity:output:02noConv7x4/policy_net/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
noConv7x4/policy_net/MatMulË
+noConv7x4/policy_net/BiasAdd/ReadVariableOpReadVariableOp4noconv7x4_policy_net_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+noConv7x4/policy_net/BiasAdd/ReadVariableOpÕ
noConv7x4/policy_net/BiasAddBiasAdd%noConv7x4/policy_net/MatMul:product:03noConv7x4/policy_net/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
noConv7x4/policy_net/BiasAdd 
noConv7x4/policy_net/SoftmaxSoftmax%noConv7x4/policy_net/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
noConv7x4/policy_net/SoftmaxÚ

IdentityIdentity&noConv7x4/policy_net/Softmax:softmax:0*^noConv7x4/batch1/batchnorm/ReadVariableOp,^noConv7x4/batch1/batchnorm/ReadVariableOp_1,^noConv7x4/batch1/batchnorm/ReadVariableOp_2.^noConv7x4/batch1/batchnorm/mul/ReadVariableOp*^noConv7x4/batch2/batchnorm/ReadVariableOp,^noConv7x4/batch2/batchnorm/ReadVariableOp_1,^noConv7x4/batch2/batchnorm/ReadVariableOp_2.^noConv7x4/batch2/batchnorm/mul/ReadVariableOp*^noConv7x4/batch3/batchnorm/ReadVariableOp,^noConv7x4/batch3/batchnorm/ReadVariableOp_1,^noConv7x4/batch3/batchnorm/ReadVariableOp_2.^noConv7x4/batch3/batchnorm/mul/ReadVariableOp*^noConv7x4/batch4/batchnorm/ReadVariableOp,^noConv7x4/batch4/batchnorm/ReadVariableOp_1,^noConv7x4/batch4/batchnorm/ReadVariableOp_2.^noConv7x4/batch4/batchnorm/mul/ReadVariableOp(^noConv7x4/dense1/BiasAdd/ReadVariableOp'^noConv7x4/dense1/MatMul/ReadVariableOp(^noConv7x4/dense2/BiasAdd/ReadVariableOp'^noConv7x4/dense2/MatMul/ReadVariableOp(^noConv7x4/dense3/BiasAdd/ReadVariableOp'^noConv7x4/dense3/MatMul/ReadVariableOp(^noConv7x4/dense4/BiasAdd/ReadVariableOp'^noConv7x4/dense4/MatMul/ReadVariableOp,^noConv7x4/policy_net/BiasAdd/ReadVariableOp+^noConv7x4/policy_net/MatMul/ReadVariableOp+^noConv7x4/value_net/BiasAdd/ReadVariableOp*^noConv7x4/value_net/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÔ


Identity_1IdentitynoConv7x4/value_net/Tanh:y:0*^noConv7x4/batch1/batchnorm/ReadVariableOp,^noConv7x4/batch1/batchnorm/ReadVariableOp_1,^noConv7x4/batch1/batchnorm/ReadVariableOp_2.^noConv7x4/batch1/batchnorm/mul/ReadVariableOp*^noConv7x4/batch2/batchnorm/ReadVariableOp,^noConv7x4/batch2/batchnorm/ReadVariableOp_1,^noConv7x4/batch2/batchnorm/ReadVariableOp_2.^noConv7x4/batch2/batchnorm/mul/ReadVariableOp*^noConv7x4/batch3/batchnorm/ReadVariableOp,^noConv7x4/batch3/batchnorm/ReadVariableOp_1,^noConv7x4/batch3/batchnorm/ReadVariableOp_2.^noConv7x4/batch3/batchnorm/mul/ReadVariableOp*^noConv7x4/batch4/batchnorm/ReadVariableOp,^noConv7x4/batch4/batchnorm/ReadVariableOp_1,^noConv7x4/batch4/batchnorm/ReadVariableOp_2.^noConv7x4/batch4/batchnorm/mul/ReadVariableOp(^noConv7x4/dense1/BiasAdd/ReadVariableOp'^noConv7x4/dense1/MatMul/ReadVariableOp(^noConv7x4/dense2/BiasAdd/ReadVariableOp'^noConv7x4/dense2/MatMul/ReadVariableOp(^noConv7x4/dense3/BiasAdd/ReadVariableOp'^noConv7x4/dense3/MatMul/ReadVariableOp(^noConv7x4/dense4/BiasAdd/ReadVariableOp'^noConv7x4/dense4/MatMul/ReadVariableOp,^noConv7x4/policy_net/BiasAdd/ReadVariableOp+^noConv7x4/policy_net/MatMul/ReadVariableOp+^noConv7x4/value_net/BiasAdd/ReadVariableOp*^noConv7x4/value_net/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2V
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
-noConv7x4/batch3/batchnorm/mul/ReadVariableOp-noConv7x4/batch3/batchnorm/mul/ReadVariableOp2V
)noConv7x4/batch4/batchnorm/ReadVariableOp)noConv7x4/batch4/batchnorm/ReadVariableOp2Z
+noConv7x4/batch4/batchnorm/ReadVariableOp_1+noConv7x4/batch4/batchnorm/ReadVariableOp_12Z
+noConv7x4/batch4/batchnorm/ReadVariableOp_2+noConv7x4/batch4/batchnorm/ReadVariableOp_22^
-noConv7x4/batch4/batchnorm/mul/ReadVariableOp-noConv7x4/batch4/batchnorm/mul/ReadVariableOp2R
'noConv7x4/dense1/BiasAdd/ReadVariableOp'noConv7x4/dense1/BiasAdd/ReadVariableOp2P
&noConv7x4/dense1/MatMul/ReadVariableOp&noConv7x4/dense1/MatMul/ReadVariableOp2R
'noConv7x4/dense2/BiasAdd/ReadVariableOp'noConv7x4/dense2/BiasAdd/ReadVariableOp2P
&noConv7x4/dense2/MatMul/ReadVariableOp&noConv7x4/dense2/MatMul/ReadVariableOp2R
'noConv7x4/dense3/BiasAdd/ReadVariableOp'noConv7x4/dense3/BiasAdd/ReadVariableOp2P
&noConv7x4/dense3/MatMul/ReadVariableOp&noConv7x4/dense3/MatMul/ReadVariableOp2R
'noConv7x4/dense4/BiasAdd/ReadVariableOp'noConv7x4/dense4/BiasAdd/ReadVariableOp2P
&noConv7x4/dense4/MatMul/ReadVariableOp&noConv7x4/dense4/MatMul/ReadVariableOp2Z
+noConv7x4/policy_net/BiasAdd/ReadVariableOp+noConv7x4/policy_net/BiasAdd/ReadVariableOp2X
*noConv7x4/policy_net/MatMul/ReadVariableOp*noConv7x4/policy_net/MatMul/ReadVariableOp2X
*noConv7x4/value_net/BiasAdd/ReadVariableOp*noConv7x4/value_net/BiasAdd/ReadVariableOp2V
)noConv7x4/value_net/MatMul/ReadVariableOp)noConv7x4/value_net/MatMul/ReadVariableOp:V R
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#
_user_specified_name	state_7_4
±
a
B__inference_drop3_layer_call_and_return_conditional_losses_1809897

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeµ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout/GreaterEqual/y¿
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ë
`
'__inference_drop1_layer_call_fn_1811074

inputs
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_drop1_layer_call_and_return_conditional_losses_18099752
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ë
`
'__inference_drop2_layer_call_fn_1811210

inputs
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_drop2_layer_call_and_return_conditional_losses_18099362
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
£

(__inference_dense2_layer_call_fn_1811100

inputs
unknown:

	unknown_0:	
identity¢StatefulPartitionedCall÷
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense2_layer_call_and_return_conditional_losses_18096142
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó
`
B__inference_drop2_layer_call_and_return_conditional_losses_1809641

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
±
a
B__inference_drop4_layer_call_and_return_conditional_losses_1809858

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeµ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout/GreaterEqual/y¿
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
£

(__inference_dense3_layer_call_fn_1811236

inputs
unknown:

	unknown_0:	
identity¢StatefulPartitionedCall÷
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense3_layer_call_and_return_conditional_losses_18096532
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢
¦
C__inference_batch2_layer_call_and_return_conditional_losses_1809088

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1Ü
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
î
Ç
(__inference_batch3_layer_call_fn_1811272

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_batch3_layer_call_and_return_conditional_losses_18093102
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ý
]
A__inference_act4_layer_call_and_return_conditional_losses_1811472

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢
¦
C__inference_batch3_layer_call_and_return_conditional_losses_1811292

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1Ü
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
î
Ç
(__inference_batch4_layer_call_fn_1811408

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_batch4_layer_call_and_return_conditional_losses_18094722
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢
¦
C__inference_batch1_layer_call_and_return_conditional_losses_1811020

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1Ü
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢
¦
C__inference_batch1_layer_call_and_return_conditional_losses_1808926

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1Ü
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ð
Ç
(__inference_batch3_layer_call_fn_1811259

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_batch3_layer_call_and_return_conditional_losses_18092502
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢
¦
C__inference_batch4_layer_call_and_return_conditional_losses_1811428

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1Ü
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
£

(__inference_dense4_layer_call_fn_1811372

inputs
unknown:

	unknown_0:	
identity¢StatefulPartitionedCall÷
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense4_layer_call_and_return_conditional_losses_18096922
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú	
÷
C__inference_dense4_layer_call_and_return_conditional_losses_1811382

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
÷\
Ñ
F__inference_noConv7x4_layer_call_and_return_conditional_losses_1810145

inputs!
dense1_1810069:	
dense1_1810071:	
batch1_1810074:	
batch1_1810076:	
batch1_1810078:	
batch1_1810080:	"
dense2_1810085:

dense2_1810087:	
batch2_1810090:	
batch2_1810092:	
batch2_1810094:	
batch2_1810096:	"
dense3_1810101:

dense3_1810103:	
batch3_1810106:	
batch3_1810108:	
batch3_1810110:	
batch3_1810112:	"
dense4_1810117:

dense4_1810119:	
batch4_1810122:	
batch4_1810124:	
batch4_1810126:	
batch4_1810128:	$
value_net_1810133:	
value_net_1810135:%
policy_net_1810138:	 
policy_net_1810140:
identity

identity_1¢batch1/StatefulPartitionedCall¢batch2/StatefulPartitionedCall¢batch3/StatefulPartitionedCall¢batch4/StatefulPartitionedCall¢dense1/StatefulPartitionedCall¢dense2/StatefulPartitionedCall¢dense3/StatefulPartitionedCall¢dense4/StatefulPartitionedCall¢drop1/StatefulPartitionedCall¢drop2/StatefulPartitionedCall¢drop3/StatefulPartitionedCall¢drop4/StatefulPartitionedCall¢"policy_net/StatefulPartitionedCall¢!value_net/StatefulPartitionedCallÕ
flatten/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_18095632
flatten/PartitionedCall«
dense1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense1_1810069dense1_1810071*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense1_layer_call_and_return_conditional_losses_18095752 
dense1/StatefulPartitionedCallÔ
batch1/StatefulPartitionedCallStatefulPartitionedCall'dense1/StatefulPartitionedCall:output:0batch1_1810074batch1_1810076batch1_1810078batch1_1810080*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_batch1_layer_call_and_return_conditional_losses_18089862 
batch1/StatefulPartitionedCallî
act1/PartitionedCallPartitionedCall'batch1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_act1_layer_call_and_return_conditional_losses_18095952
act1/PartitionedCallÿ
drop1/StatefulPartitionedCallStatefulPartitionedCallact1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_drop1_layer_call_and_return_conditional_losses_18099752
drop1/StatefulPartitionedCall±
dense2/StatefulPartitionedCallStatefulPartitionedCall&drop1/StatefulPartitionedCall:output:0dense2_1810085dense2_1810087*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense2_layer_call_and_return_conditional_losses_18096142 
dense2/StatefulPartitionedCallÔ
batch2/StatefulPartitionedCallStatefulPartitionedCall'dense2/StatefulPartitionedCall:output:0batch2_1810090batch2_1810092batch2_1810094batch2_1810096*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_batch2_layer_call_and_return_conditional_losses_18091482 
batch2/StatefulPartitionedCallî
act2/PartitionedCallPartitionedCall'batch2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_act2_layer_call_and_return_conditional_losses_18096342
act2/PartitionedCall
drop2/StatefulPartitionedCallStatefulPartitionedCallact2/PartitionedCall:output:0^drop1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_drop2_layer_call_and_return_conditional_losses_18099362
drop2/StatefulPartitionedCall±
dense3/StatefulPartitionedCallStatefulPartitionedCall&drop2/StatefulPartitionedCall:output:0dense3_1810101dense3_1810103*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense3_layer_call_and_return_conditional_losses_18096532 
dense3/StatefulPartitionedCallÔ
batch3/StatefulPartitionedCallStatefulPartitionedCall'dense3/StatefulPartitionedCall:output:0batch3_1810106batch3_1810108batch3_1810110batch3_1810112*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_batch3_layer_call_and_return_conditional_losses_18093102 
batch3/StatefulPartitionedCallî
act3/PartitionedCallPartitionedCall'batch3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_act3_layer_call_and_return_conditional_losses_18096732
act3/PartitionedCall
drop3/StatefulPartitionedCallStatefulPartitionedCallact3/PartitionedCall:output:0^drop2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_drop3_layer_call_and_return_conditional_losses_18098972
drop3/StatefulPartitionedCall±
dense4/StatefulPartitionedCallStatefulPartitionedCall&drop3/StatefulPartitionedCall:output:0dense4_1810117dense4_1810119*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense4_layer_call_and_return_conditional_losses_18096922 
dense4/StatefulPartitionedCallÔ
batch4/StatefulPartitionedCallStatefulPartitionedCall'dense4/StatefulPartitionedCall:output:0batch4_1810122batch4_1810124batch4_1810126batch4_1810128*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_batch4_layer_call_and_return_conditional_losses_18094722 
batch4/StatefulPartitionedCallî
act4/PartitionedCallPartitionedCall'batch4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_act4_layer_call_and_return_conditional_losses_18097122
act4/PartitionedCall
drop4/StatefulPartitionedCallStatefulPartitionedCallact4/PartitionedCall:output:0^drop3/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_drop4_layer_call_and_return_conditional_losses_18098582
drop4/StatefulPartitionedCall¿
!value_net/StatefulPartitionedCallStatefulPartitionedCall&drop4/StatefulPartitionedCall:output:0value_net_1810133value_net_1810135*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_value_net_layer_call_and_return_conditional_losses_18097322#
!value_net/StatefulPartitionedCallÄ
"policy_net/StatefulPartitionedCallStatefulPartitionedCall&drop4/StatefulPartitionedCall:output:0policy_net_1810138policy_net_1810140*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_policy_net_layer_call_and_return_conditional_losses_18097492$
"policy_net/StatefulPartitionedCallÐ
IdentityIdentity+policy_net/StatefulPartitionedCall:output:0^batch1/StatefulPartitionedCall^batch2/StatefulPartitionedCall^batch3/StatefulPartitionedCall^batch4/StatefulPartitionedCall^dense1/StatefulPartitionedCall^dense2/StatefulPartitionedCall^dense3/StatefulPartitionedCall^dense4/StatefulPartitionedCall^drop1/StatefulPartitionedCall^drop2/StatefulPartitionedCall^drop3/StatefulPartitionedCall^drop4/StatefulPartitionedCall#^policy_net/StatefulPartitionedCall"^value_net/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÓ

Identity_1Identity*value_net/StatefulPartitionedCall:output:0^batch1/StatefulPartitionedCall^batch2/StatefulPartitionedCall^batch3/StatefulPartitionedCall^batch4/StatefulPartitionedCall^dense1/StatefulPartitionedCall^dense2/StatefulPartitionedCall^dense3/StatefulPartitionedCall^dense4/StatefulPartitionedCall^drop1/StatefulPartitionedCall^drop2/StatefulPartitionedCall^drop3/StatefulPartitionedCall^drop4/StatefulPartitionedCall#^policy_net/StatefulPartitionedCall"^value_net/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
batch1/StatefulPartitionedCallbatch1/StatefulPartitionedCall2@
batch2/StatefulPartitionedCallbatch2/StatefulPartitionedCall2@
batch3/StatefulPartitionedCallbatch3/StatefulPartitionedCall2@
batch4/StatefulPartitionedCallbatch4/StatefulPartitionedCall2@
dense1/StatefulPartitionedCalldense1/StatefulPartitionedCall2@
dense2/StatefulPartitionedCalldense2/StatefulPartitionedCall2@
dense3/StatefulPartitionedCalldense3/StatefulPartitionedCall2@
dense4/StatefulPartitionedCalldense4/StatefulPartitionedCall2>
drop1/StatefulPartitionedCalldrop1/StatefulPartitionedCall2>
drop2/StatefulPartitionedCalldrop2/StatefulPartitionedCall2>
drop3/StatefulPartitionedCalldrop3/StatefulPartitionedCall2>
drop4/StatefulPartitionedCalldrop4/StatefulPartitionedCall2H
"policy_net/StatefulPartitionedCall"policy_net/StatefulPartitionedCall2F
!value_net/StatefulPartitionedCall!value_net/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú	
÷
C__inference_dense4_layer_call_and_return_conditional_losses_1809692

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
±
a
B__inference_drop1_layer_call_and_return_conditional_losses_1809975

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeµ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout/GreaterEqual/y¿
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
î
Ç
(__inference_batch2_layer_call_fn_1811136

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_batch2_layer_call_and_return_conditional_losses_18091482
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó
`
B__inference_drop3_layer_call_and_return_conditional_losses_1809680

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ê
÷
+__inference_noConv7x4_layer_call_fn_1810269
	state_7_4
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:

	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:	

unknown_10:	

unknown_11:


unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	

unknown_17:


unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:	

unknown_22:	

unknown_23:	

unknown_24:

unknown_25:	

unknown_26:
identity

identity_1¢StatefulPartitionedCallë
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
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*6
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_noConv7x4_layer_call_and_return_conditional_losses_18101452
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#
_user_specified_name	state_7_4
*
à
C__inference_batch3_layer_call_and_return_conditional_losses_1811326

inputs6
'assignmovingavg_readvariableop_resource:	8
)assignmovingavg_1_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	2
moments/StopGradient¥
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices³
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay¥
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/mul¿
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
×#<2
AssignMovingAvg_1/decay«
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp¡
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/mulÉ
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
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
*
à
C__inference_batch4_layer_call_and_return_conditional_losses_1811462

inputs6
'assignmovingavg_readvariableop_resource:	8
)assignmovingavg_1_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	2
moments/StopGradient¥
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices³
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay¥
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/mul¿
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
×#<2
AssignMovingAvg_1/decay«
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp¡
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/mulÉ
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
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ý
]
A__inference_act2_layer_call_and_return_conditional_losses_1811200

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
½
B
&__inference_act4_layer_call_fn_1811467

inputs
identityÃ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_act4_layer_call_and_return_conditional_losses_18097122
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
È
ñ
%__inference_signature_wrapper_1810500
	state_7_4
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:

	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:	

unknown_10:	

unknown_11:


unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	

unknown_17:


unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:	

unknown_22:	

unknown_23:	

unknown_24:

unknown_25:	

unknown_26:
identity

identity_1¢StatefulPartitionedCallÏ
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
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__wrapped_model_18089022
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#
_user_specified_name	state_7_4
Ý
]
A__inference_act1_layer_call_and_return_conditional_losses_1809595

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ý
]
A__inference_act2_layer_call_and_return_conditional_losses_1809634

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¨

ø
F__inference_value_net_layer_call_and_return_conditional_losses_1811539

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tanh
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
È¤
Â
F__inference_noConv7x4_layer_call_and_return_conditional_losses_1810818

inputs8
%dense1_matmul_readvariableop_resource:	5
&dense1_biasadd_readvariableop_resource:	=
.batch1_assignmovingavg_readvariableop_resource:	?
0batch1_assignmovingavg_1_readvariableop_resource:	;
,batch1_batchnorm_mul_readvariableop_resource:	7
(batch1_batchnorm_readvariableop_resource:	9
%dense2_matmul_readvariableop_resource:
5
&dense2_biasadd_readvariableop_resource:	=
.batch2_assignmovingavg_readvariableop_resource:	?
0batch2_assignmovingavg_1_readvariableop_resource:	;
,batch2_batchnorm_mul_readvariableop_resource:	7
(batch2_batchnorm_readvariableop_resource:	9
%dense3_matmul_readvariableop_resource:
5
&dense3_biasadd_readvariableop_resource:	=
.batch3_assignmovingavg_readvariableop_resource:	?
0batch3_assignmovingavg_1_readvariableop_resource:	;
,batch3_batchnorm_mul_readvariableop_resource:	7
(batch3_batchnorm_readvariableop_resource:	9
%dense4_matmul_readvariableop_resource:
5
&dense4_biasadd_readvariableop_resource:	=
.batch4_assignmovingavg_readvariableop_resource:	?
0batch4_assignmovingavg_1_readvariableop_resource:	;
,batch4_batchnorm_mul_readvariableop_resource:	7
(batch4_batchnorm_readvariableop_resource:	;
(value_net_matmul_readvariableop_resource:	7
)value_net_biasadd_readvariableop_resource:<
)policy_net_matmul_readvariableop_resource:	8
*policy_net_biasadd_readvariableop_resource:
identity

identity_1¢batch1/AssignMovingAvg¢%batch1/AssignMovingAvg/ReadVariableOp¢batch1/AssignMovingAvg_1¢'batch1/AssignMovingAvg_1/ReadVariableOp¢batch1/batchnorm/ReadVariableOp¢#batch1/batchnorm/mul/ReadVariableOp¢batch2/AssignMovingAvg¢%batch2/AssignMovingAvg/ReadVariableOp¢batch2/AssignMovingAvg_1¢'batch2/AssignMovingAvg_1/ReadVariableOp¢batch2/batchnorm/ReadVariableOp¢#batch2/batchnorm/mul/ReadVariableOp¢batch3/AssignMovingAvg¢%batch3/AssignMovingAvg/ReadVariableOp¢batch3/AssignMovingAvg_1¢'batch3/AssignMovingAvg_1/ReadVariableOp¢batch3/batchnorm/ReadVariableOp¢#batch3/batchnorm/mul/ReadVariableOp¢batch4/AssignMovingAvg¢%batch4/AssignMovingAvg/ReadVariableOp¢batch4/AssignMovingAvg_1¢'batch4/AssignMovingAvg_1/ReadVariableOp¢batch4/batchnorm/ReadVariableOp¢#batch4/batchnorm/mul/ReadVariableOp¢dense1/BiasAdd/ReadVariableOp¢dense1/MatMul/ReadVariableOp¢dense2/BiasAdd/ReadVariableOp¢dense2/MatMul/ReadVariableOp¢dense3/BiasAdd/ReadVariableOp¢dense3/MatMul/ReadVariableOp¢dense4/BiasAdd/ReadVariableOp¢dense4/MatMul/ReadVariableOp¢!policy_net/BiasAdd/ReadVariableOp¢ policy_net/MatMul/ReadVariableOp¢ value_net/BiasAdd/ReadVariableOp¢value_net/MatMul/ReadVariableOpo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
flatten/Const
flatten/ReshapeReshapeinputsflatten/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
flatten/Reshape£
dense1/MatMul/ReadVariableOpReadVariableOp%dense1_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02
dense1/MatMul/ReadVariableOp
dense1/MatMulMatMulflatten/Reshape:output:0$dense1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense1/MatMul¢
dense1/BiasAdd/ReadVariableOpReadVariableOp&dense1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
dense1/BiasAdd/ReadVariableOp
dense1/BiasAddBiasAdddense1/MatMul:product:0%dense1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense1/BiasAdd
%batch1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2'
%batch1/moments/mean/reduction_indices¶
batch1/moments/meanMeandense1/BiasAdd:output:0.batch1/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
batch1/moments/mean
batch1/moments/StopGradientStopGradientbatch1/moments/mean:output:0*
T0*
_output_shapes
:	2
batch1/moments/StopGradientË
 batch1/moments/SquaredDifferenceSquaredDifferencedense1/BiasAdd:output:0$batch1/moments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 batch1/moments/SquaredDifference 
)batch1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2+
)batch1/moments/variance/reduction_indicesÏ
batch1/moments/varianceMean$batch1/moments/SquaredDifference:z:02batch1/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
batch1/moments/variance
batch1/moments/SqueezeSqueezebatch1/moments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
batch1/moments/Squeeze
batch1/moments/Squeeze_1Squeeze batch1/moments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
batch1/moments/Squeeze_1
batch1/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
batch1/AssignMovingAvg/decayº
%batch1/AssignMovingAvg/ReadVariableOpReadVariableOp.batch1_assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype02'
%batch1/AssignMovingAvg/ReadVariableOpµ
batch1/AssignMovingAvg/subSub-batch1/AssignMovingAvg/ReadVariableOp:value:0batch1/moments/Squeeze:output:0*
T0*
_output_shapes	
:2
batch1/AssignMovingAvg/sub¬
batch1/AssignMovingAvg/mulMulbatch1/AssignMovingAvg/sub:z:0%batch1/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
batch1/AssignMovingAvg/mulâ
batch1/AssignMovingAvgAssignSubVariableOp.batch1_assignmovingavg_readvariableop_resourcebatch1/AssignMovingAvg/mul:z:0&^batch1/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
batch1/AssignMovingAvg
batch1/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2 
batch1/AssignMovingAvg_1/decayÀ
'batch1/AssignMovingAvg_1/ReadVariableOpReadVariableOp0batch1_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype02)
'batch1/AssignMovingAvg_1/ReadVariableOp½
batch1/AssignMovingAvg_1/subSub/batch1/AssignMovingAvg_1/ReadVariableOp:value:0!batch1/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:2
batch1/AssignMovingAvg_1/sub´
batch1/AssignMovingAvg_1/mulMul batch1/AssignMovingAvg_1/sub:z:0'batch1/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2
batch1/AssignMovingAvg_1/mulì
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
 *o:2
batch1/batchnorm/add/y
batch1/batchnorm/addAddV2!batch1/moments/Squeeze_1:output:0batch1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batch1/batchnorm/addy
batch1/batchnorm/RsqrtRsqrtbatch1/batchnorm/add:z:0*
T0*
_output_shapes	
:2
batch1/batchnorm/Rsqrt´
#batch1/batchnorm/mul/ReadVariableOpReadVariableOp,batch1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02%
#batch1/batchnorm/mul/ReadVariableOp¢
batch1/batchnorm/mulMulbatch1/batchnorm/Rsqrt:y:0+batch1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batch1/batchnorm/mul
batch1/batchnorm/mul_1Muldense1/BiasAdd:output:0batch1/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batch1/batchnorm/mul_1
batch1/batchnorm/mul_2Mulbatch1/moments/Squeeze:output:0batch1/batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batch1/batchnorm/mul_2¨
batch1/batchnorm/ReadVariableOpReadVariableOp(batch1_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02!
batch1/batchnorm/ReadVariableOp
batch1/batchnorm/subSub'batch1/batchnorm/ReadVariableOp:value:0batch1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batch1/batchnorm/sub¢
batch1/batchnorm/add_1AddV2batch1/batchnorm/mul_1:z:0batch1/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batch1/batchnorm/add_1m
	act1/ReluRelubatch1/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	act1/Reluo
drop1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
drop1/dropout/Const
drop1/dropout/MulMulact1/Relu:activations:0drop1/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
drop1/dropout/Mulq
drop1/dropout/ShapeShapeact1/Relu:activations:0*
T0*
_output_shapes
:2
drop1/dropout/ShapeÇ
*drop1/dropout/random_uniform/RandomUniformRandomUniformdrop1/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02,
*drop1/dropout/random_uniform/RandomUniform
drop1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
drop1/dropout/GreaterEqual/y×
drop1/dropout/GreaterEqualGreaterEqual3drop1/dropout/random_uniform/RandomUniform:output:0%drop1/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
drop1/dropout/GreaterEqual
drop1/dropout/CastCastdrop1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
drop1/dropout/Cast
drop1/dropout/Mul_1Muldrop1/dropout/Mul:z:0drop1/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
drop1/dropout/Mul_1¤
dense2/MatMul/ReadVariableOpReadVariableOp%dense2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
dense2/MatMul/ReadVariableOp
dense2/MatMulMatMuldrop1/dropout/Mul_1:z:0$dense2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense2/MatMul¢
dense2/BiasAdd/ReadVariableOpReadVariableOp&dense2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
dense2/BiasAdd/ReadVariableOp
dense2/BiasAddBiasAdddense2/MatMul:product:0%dense2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense2/BiasAdd
%batch2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2'
%batch2/moments/mean/reduction_indices¶
batch2/moments/meanMeandense2/BiasAdd:output:0.batch2/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
batch2/moments/mean
batch2/moments/StopGradientStopGradientbatch2/moments/mean:output:0*
T0*
_output_shapes
:	2
batch2/moments/StopGradientË
 batch2/moments/SquaredDifferenceSquaredDifferencedense2/BiasAdd:output:0$batch2/moments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 batch2/moments/SquaredDifference 
)batch2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2+
)batch2/moments/variance/reduction_indicesÏ
batch2/moments/varianceMean$batch2/moments/SquaredDifference:z:02batch2/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
batch2/moments/variance
batch2/moments/SqueezeSqueezebatch2/moments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
batch2/moments/Squeeze
batch2/moments/Squeeze_1Squeeze batch2/moments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
batch2/moments/Squeeze_1
batch2/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
batch2/AssignMovingAvg/decayº
%batch2/AssignMovingAvg/ReadVariableOpReadVariableOp.batch2_assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype02'
%batch2/AssignMovingAvg/ReadVariableOpµ
batch2/AssignMovingAvg/subSub-batch2/AssignMovingAvg/ReadVariableOp:value:0batch2/moments/Squeeze:output:0*
T0*
_output_shapes	
:2
batch2/AssignMovingAvg/sub¬
batch2/AssignMovingAvg/mulMulbatch2/AssignMovingAvg/sub:z:0%batch2/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
batch2/AssignMovingAvg/mulâ
batch2/AssignMovingAvgAssignSubVariableOp.batch2_assignmovingavg_readvariableop_resourcebatch2/AssignMovingAvg/mul:z:0&^batch2/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
batch2/AssignMovingAvg
batch2/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2 
batch2/AssignMovingAvg_1/decayÀ
'batch2/AssignMovingAvg_1/ReadVariableOpReadVariableOp0batch2_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype02)
'batch2/AssignMovingAvg_1/ReadVariableOp½
batch2/AssignMovingAvg_1/subSub/batch2/AssignMovingAvg_1/ReadVariableOp:value:0!batch2/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:2
batch2/AssignMovingAvg_1/sub´
batch2/AssignMovingAvg_1/mulMul batch2/AssignMovingAvg_1/sub:z:0'batch2/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2
batch2/AssignMovingAvg_1/mulì
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
 *o:2
batch2/batchnorm/add/y
batch2/batchnorm/addAddV2!batch2/moments/Squeeze_1:output:0batch2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batch2/batchnorm/addy
batch2/batchnorm/RsqrtRsqrtbatch2/batchnorm/add:z:0*
T0*
_output_shapes	
:2
batch2/batchnorm/Rsqrt´
#batch2/batchnorm/mul/ReadVariableOpReadVariableOp,batch2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02%
#batch2/batchnorm/mul/ReadVariableOp¢
batch2/batchnorm/mulMulbatch2/batchnorm/Rsqrt:y:0+batch2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batch2/batchnorm/mul
batch2/batchnorm/mul_1Muldense2/BiasAdd:output:0batch2/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batch2/batchnorm/mul_1
batch2/batchnorm/mul_2Mulbatch2/moments/Squeeze:output:0batch2/batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batch2/batchnorm/mul_2¨
batch2/batchnorm/ReadVariableOpReadVariableOp(batch2_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02!
batch2/batchnorm/ReadVariableOp
batch2/batchnorm/subSub'batch2/batchnorm/ReadVariableOp:value:0batch2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batch2/batchnorm/sub¢
batch2/batchnorm/add_1AddV2batch2/batchnorm/mul_1:z:0batch2/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batch2/batchnorm/add_1m
	act2/ReluRelubatch2/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	act2/Reluo
drop2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
drop2/dropout/Const
drop2/dropout/MulMulact2/Relu:activations:0drop2/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
drop2/dropout/Mulq
drop2/dropout/ShapeShapeact2/Relu:activations:0*
T0*
_output_shapes
:2
drop2/dropout/ShapeÇ
*drop2/dropout/random_uniform/RandomUniformRandomUniformdrop2/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02,
*drop2/dropout/random_uniform/RandomUniform
drop2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
drop2/dropout/GreaterEqual/y×
drop2/dropout/GreaterEqualGreaterEqual3drop2/dropout/random_uniform/RandomUniform:output:0%drop2/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
drop2/dropout/GreaterEqual
drop2/dropout/CastCastdrop2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
drop2/dropout/Cast
drop2/dropout/Mul_1Muldrop2/dropout/Mul:z:0drop2/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
drop2/dropout/Mul_1¤
dense3/MatMul/ReadVariableOpReadVariableOp%dense3_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
dense3/MatMul/ReadVariableOp
dense3/MatMulMatMuldrop2/dropout/Mul_1:z:0$dense3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense3/MatMul¢
dense3/BiasAdd/ReadVariableOpReadVariableOp&dense3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
dense3/BiasAdd/ReadVariableOp
dense3/BiasAddBiasAdddense3/MatMul:product:0%dense3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense3/BiasAdd
%batch3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2'
%batch3/moments/mean/reduction_indices¶
batch3/moments/meanMeandense3/BiasAdd:output:0.batch3/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
batch3/moments/mean
batch3/moments/StopGradientStopGradientbatch3/moments/mean:output:0*
T0*
_output_shapes
:	2
batch3/moments/StopGradientË
 batch3/moments/SquaredDifferenceSquaredDifferencedense3/BiasAdd:output:0$batch3/moments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 batch3/moments/SquaredDifference 
)batch3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2+
)batch3/moments/variance/reduction_indicesÏ
batch3/moments/varianceMean$batch3/moments/SquaredDifference:z:02batch3/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
batch3/moments/variance
batch3/moments/SqueezeSqueezebatch3/moments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
batch3/moments/Squeeze
batch3/moments/Squeeze_1Squeeze batch3/moments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
batch3/moments/Squeeze_1
batch3/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
batch3/AssignMovingAvg/decayº
%batch3/AssignMovingAvg/ReadVariableOpReadVariableOp.batch3_assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype02'
%batch3/AssignMovingAvg/ReadVariableOpµ
batch3/AssignMovingAvg/subSub-batch3/AssignMovingAvg/ReadVariableOp:value:0batch3/moments/Squeeze:output:0*
T0*
_output_shapes	
:2
batch3/AssignMovingAvg/sub¬
batch3/AssignMovingAvg/mulMulbatch3/AssignMovingAvg/sub:z:0%batch3/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
batch3/AssignMovingAvg/mulâ
batch3/AssignMovingAvgAssignSubVariableOp.batch3_assignmovingavg_readvariableop_resourcebatch3/AssignMovingAvg/mul:z:0&^batch3/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
batch3/AssignMovingAvg
batch3/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2 
batch3/AssignMovingAvg_1/decayÀ
'batch3/AssignMovingAvg_1/ReadVariableOpReadVariableOp0batch3_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype02)
'batch3/AssignMovingAvg_1/ReadVariableOp½
batch3/AssignMovingAvg_1/subSub/batch3/AssignMovingAvg_1/ReadVariableOp:value:0!batch3/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:2
batch3/AssignMovingAvg_1/sub´
batch3/AssignMovingAvg_1/mulMul batch3/AssignMovingAvg_1/sub:z:0'batch3/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2
batch3/AssignMovingAvg_1/mulì
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
 *o:2
batch3/batchnorm/add/y
batch3/batchnorm/addAddV2!batch3/moments/Squeeze_1:output:0batch3/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batch3/batchnorm/addy
batch3/batchnorm/RsqrtRsqrtbatch3/batchnorm/add:z:0*
T0*
_output_shapes	
:2
batch3/batchnorm/Rsqrt´
#batch3/batchnorm/mul/ReadVariableOpReadVariableOp,batch3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02%
#batch3/batchnorm/mul/ReadVariableOp¢
batch3/batchnorm/mulMulbatch3/batchnorm/Rsqrt:y:0+batch3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batch3/batchnorm/mul
batch3/batchnorm/mul_1Muldense3/BiasAdd:output:0batch3/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batch3/batchnorm/mul_1
batch3/batchnorm/mul_2Mulbatch3/moments/Squeeze:output:0batch3/batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batch3/batchnorm/mul_2¨
batch3/batchnorm/ReadVariableOpReadVariableOp(batch3_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02!
batch3/batchnorm/ReadVariableOp
batch3/batchnorm/subSub'batch3/batchnorm/ReadVariableOp:value:0batch3/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batch3/batchnorm/sub¢
batch3/batchnorm/add_1AddV2batch3/batchnorm/mul_1:z:0batch3/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batch3/batchnorm/add_1m
	act3/ReluRelubatch3/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	act3/Reluo
drop3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
drop3/dropout/Const
drop3/dropout/MulMulact3/Relu:activations:0drop3/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
drop3/dropout/Mulq
drop3/dropout/ShapeShapeact3/Relu:activations:0*
T0*
_output_shapes
:2
drop3/dropout/ShapeÇ
*drop3/dropout/random_uniform/RandomUniformRandomUniformdrop3/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02,
*drop3/dropout/random_uniform/RandomUniform
drop3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
drop3/dropout/GreaterEqual/y×
drop3/dropout/GreaterEqualGreaterEqual3drop3/dropout/random_uniform/RandomUniform:output:0%drop3/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
drop3/dropout/GreaterEqual
drop3/dropout/CastCastdrop3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
drop3/dropout/Cast
drop3/dropout/Mul_1Muldrop3/dropout/Mul:z:0drop3/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
drop3/dropout/Mul_1¤
dense4/MatMul/ReadVariableOpReadVariableOp%dense4_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
dense4/MatMul/ReadVariableOp
dense4/MatMulMatMuldrop3/dropout/Mul_1:z:0$dense4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense4/MatMul¢
dense4/BiasAdd/ReadVariableOpReadVariableOp&dense4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
dense4/BiasAdd/ReadVariableOp
dense4/BiasAddBiasAdddense4/MatMul:product:0%dense4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense4/BiasAdd
%batch4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2'
%batch4/moments/mean/reduction_indices¶
batch4/moments/meanMeandense4/BiasAdd:output:0.batch4/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
batch4/moments/mean
batch4/moments/StopGradientStopGradientbatch4/moments/mean:output:0*
T0*
_output_shapes
:	2
batch4/moments/StopGradientË
 batch4/moments/SquaredDifferenceSquaredDifferencedense4/BiasAdd:output:0$batch4/moments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 batch4/moments/SquaredDifference 
)batch4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2+
)batch4/moments/variance/reduction_indicesÏ
batch4/moments/varianceMean$batch4/moments/SquaredDifference:z:02batch4/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
batch4/moments/variance
batch4/moments/SqueezeSqueezebatch4/moments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
batch4/moments/Squeeze
batch4/moments/Squeeze_1Squeeze batch4/moments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
batch4/moments/Squeeze_1
batch4/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
batch4/AssignMovingAvg/decayº
%batch4/AssignMovingAvg/ReadVariableOpReadVariableOp.batch4_assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype02'
%batch4/AssignMovingAvg/ReadVariableOpµ
batch4/AssignMovingAvg/subSub-batch4/AssignMovingAvg/ReadVariableOp:value:0batch4/moments/Squeeze:output:0*
T0*
_output_shapes	
:2
batch4/AssignMovingAvg/sub¬
batch4/AssignMovingAvg/mulMulbatch4/AssignMovingAvg/sub:z:0%batch4/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
batch4/AssignMovingAvg/mulâ
batch4/AssignMovingAvgAssignSubVariableOp.batch4_assignmovingavg_readvariableop_resourcebatch4/AssignMovingAvg/mul:z:0&^batch4/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
batch4/AssignMovingAvg
batch4/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2 
batch4/AssignMovingAvg_1/decayÀ
'batch4/AssignMovingAvg_1/ReadVariableOpReadVariableOp0batch4_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype02)
'batch4/AssignMovingAvg_1/ReadVariableOp½
batch4/AssignMovingAvg_1/subSub/batch4/AssignMovingAvg_1/ReadVariableOp:value:0!batch4/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:2
batch4/AssignMovingAvg_1/sub´
batch4/AssignMovingAvg_1/mulMul batch4/AssignMovingAvg_1/sub:z:0'batch4/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2
batch4/AssignMovingAvg_1/mulì
batch4/AssignMovingAvg_1AssignSubVariableOp0batch4_assignmovingavg_1_readvariableop_resource batch4/AssignMovingAvg_1/mul:z:0(^batch4/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
batch4/AssignMovingAvg_1u
batch4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batch4/batchnorm/add/y
batch4/batchnorm/addAddV2!batch4/moments/Squeeze_1:output:0batch4/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batch4/batchnorm/addy
batch4/batchnorm/RsqrtRsqrtbatch4/batchnorm/add:z:0*
T0*
_output_shapes	
:2
batch4/batchnorm/Rsqrt´
#batch4/batchnorm/mul/ReadVariableOpReadVariableOp,batch4_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02%
#batch4/batchnorm/mul/ReadVariableOp¢
batch4/batchnorm/mulMulbatch4/batchnorm/Rsqrt:y:0+batch4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batch4/batchnorm/mul
batch4/batchnorm/mul_1Muldense4/BiasAdd:output:0batch4/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batch4/batchnorm/mul_1
batch4/batchnorm/mul_2Mulbatch4/moments/Squeeze:output:0batch4/batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batch4/batchnorm/mul_2¨
batch4/batchnorm/ReadVariableOpReadVariableOp(batch4_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02!
batch4/batchnorm/ReadVariableOp
batch4/batchnorm/subSub'batch4/batchnorm/ReadVariableOp:value:0batch4/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batch4/batchnorm/sub¢
batch4/batchnorm/add_1AddV2batch4/batchnorm/mul_1:z:0batch4/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batch4/batchnorm/add_1m
	act4/ReluRelubatch4/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	act4/Reluo
drop4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
drop4/dropout/Const
drop4/dropout/MulMulact4/Relu:activations:0drop4/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
drop4/dropout/Mulq
drop4/dropout/ShapeShapeact4/Relu:activations:0*
T0*
_output_shapes
:2
drop4/dropout/ShapeÇ
*drop4/dropout/random_uniform/RandomUniformRandomUniformdrop4/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02,
*drop4/dropout/random_uniform/RandomUniform
drop4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
drop4/dropout/GreaterEqual/y×
drop4/dropout/GreaterEqualGreaterEqual3drop4/dropout/random_uniform/RandomUniform:output:0%drop4/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
drop4/dropout/GreaterEqual
drop4/dropout/CastCastdrop4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
drop4/dropout/Cast
drop4/dropout/Mul_1Muldrop4/dropout/Mul:z:0drop4/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
drop4/dropout/Mul_1¬
value_net/MatMul/ReadVariableOpReadVariableOp(value_net_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02!
value_net/MatMul/ReadVariableOp¢
value_net/MatMulMatMuldrop4/dropout/Mul_1:z:0'value_net/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
value_net/MatMulª
 value_net/BiasAdd/ReadVariableOpReadVariableOp)value_net_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 value_net/BiasAdd/ReadVariableOp©
value_net/BiasAddBiasAddvalue_net/MatMul:product:0(value_net/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
value_net/BiasAddv
value_net/TanhTanhvalue_net/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
value_net/Tanh¯
 policy_net/MatMul/ReadVariableOpReadVariableOp)policy_net_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02"
 policy_net/MatMul/ReadVariableOp¥
policy_net/MatMulMatMuldrop4/dropout/Mul_1:z:0(policy_net/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
policy_net/MatMul­
!policy_net/BiasAdd/ReadVariableOpReadVariableOp*policy_net_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!policy_net/BiasAdd/ReadVariableOp­
policy_net/BiasAddBiasAddpolicy_net/MatMul:product:0)policy_net/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
policy_net/BiasAdd
policy_net/SoftmaxSoftmaxpolicy_net/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
policy_net/Softmax°

IdentityIdentitypolicy_net/Softmax:softmax:0^batch1/AssignMovingAvg&^batch1/AssignMovingAvg/ReadVariableOp^batch1/AssignMovingAvg_1(^batch1/AssignMovingAvg_1/ReadVariableOp ^batch1/batchnorm/ReadVariableOp$^batch1/batchnorm/mul/ReadVariableOp^batch2/AssignMovingAvg&^batch2/AssignMovingAvg/ReadVariableOp^batch2/AssignMovingAvg_1(^batch2/AssignMovingAvg_1/ReadVariableOp ^batch2/batchnorm/ReadVariableOp$^batch2/batchnorm/mul/ReadVariableOp^batch3/AssignMovingAvg&^batch3/AssignMovingAvg/ReadVariableOp^batch3/AssignMovingAvg_1(^batch3/AssignMovingAvg_1/ReadVariableOp ^batch3/batchnorm/ReadVariableOp$^batch3/batchnorm/mul/ReadVariableOp^batch4/AssignMovingAvg&^batch4/AssignMovingAvg/ReadVariableOp^batch4/AssignMovingAvg_1(^batch4/AssignMovingAvg_1/ReadVariableOp ^batch4/batchnorm/ReadVariableOp$^batch4/batchnorm/mul/ReadVariableOp^dense1/BiasAdd/ReadVariableOp^dense1/MatMul/ReadVariableOp^dense2/BiasAdd/ReadVariableOp^dense2/MatMul/ReadVariableOp^dense3/BiasAdd/ReadVariableOp^dense3/MatMul/ReadVariableOp^dense4/BiasAdd/ReadVariableOp^dense4/MatMul/ReadVariableOp"^policy_net/BiasAdd/ReadVariableOp!^policy_net/MatMul/ReadVariableOp!^value_net/BiasAdd/ReadVariableOp ^value_net/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityª


Identity_1Identityvalue_net/Tanh:y:0^batch1/AssignMovingAvg&^batch1/AssignMovingAvg/ReadVariableOp^batch1/AssignMovingAvg_1(^batch1/AssignMovingAvg_1/ReadVariableOp ^batch1/batchnorm/ReadVariableOp$^batch1/batchnorm/mul/ReadVariableOp^batch2/AssignMovingAvg&^batch2/AssignMovingAvg/ReadVariableOp^batch2/AssignMovingAvg_1(^batch2/AssignMovingAvg_1/ReadVariableOp ^batch2/batchnorm/ReadVariableOp$^batch2/batchnorm/mul/ReadVariableOp^batch3/AssignMovingAvg&^batch3/AssignMovingAvg/ReadVariableOp^batch3/AssignMovingAvg_1(^batch3/AssignMovingAvg_1/ReadVariableOp ^batch3/batchnorm/ReadVariableOp$^batch3/batchnorm/mul/ReadVariableOp^batch4/AssignMovingAvg&^batch4/AssignMovingAvg/ReadVariableOp^batch4/AssignMovingAvg_1(^batch4/AssignMovingAvg_1/ReadVariableOp ^batch4/batchnorm/ReadVariableOp$^batch4/batchnorm/mul/ReadVariableOp^dense1/BiasAdd/ReadVariableOp^dense1/MatMul/ReadVariableOp^dense2/BiasAdd/ReadVariableOp^dense2/MatMul/ReadVariableOp^dense3/BiasAdd/ReadVariableOp^dense3/MatMul/ReadVariableOp^dense4/BiasAdd/ReadVariableOp^dense4/MatMul/ReadVariableOp"^policy_net/BiasAdd/ReadVariableOp!^policy_net/MatMul/ReadVariableOp!^value_net/BiasAdd/ReadVariableOp ^value_net/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : 20
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
#batch3/batchnorm/mul/ReadVariableOp#batch3/batchnorm/mul/ReadVariableOp20
batch4/AssignMovingAvgbatch4/AssignMovingAvg2N
%batch4/AssignMovingAvg/ReadVariableOp%batch4/AssignMovingAvg/ReadVariableOp24
batch4/AssignMovingAvg_1batch4/AssignMovingAvg_12R
'batch4/AssignMovingAvg_1/ReadVariableOp'batch4/AssignMovingAvg_1/ReadVariableOp2B
batch4/batchnorm/ReadVariableOpbatch4/batchnorm/ReadVariableOp2J
#batch4/batchnorm/mul/ReadVariableOp#batch4/batchnorm/mul/ReadVariableOp2>
dense1/BiasAdd/ReadVariableOpdense1/BiasAdd/ReadVariableOp2<
dense1/MatMul/ReadVariableOpdense1/MatMul/ReadVariableOp2>
dense2/BiasAdd/ReadVariableOpdense2/BiasAdd/ReadVariableOp2<
dense2/MatMul/ReadVariableOpdense2/MatMul/ReadVariableOp2>
dense3/BiasAdd/ReadVariableOpdense3/BiasAdd/ReadVariableOp2<
dense3/MatMul/ReadVariableOpdense3/MatMul/ReadVariableOp2>
dense4/BiasAdd/ReadVariableOpdense4/BiasAdd/ReadVariableOp2<
dense4/MatMul/ReadVariableOpdense4/MatMul/ReadVariableOp2F
!policy_net/BiasAdd/ReadVariableOp!policy_net/BiasAdd/ReadVariableOp2D
 policy_net/MatMul/ReadVariableOp policy_net/MatMul/ReadVariableOp2D
 value_net/BiasAdd/ReadVariableOp value_net/BiasAdd/ReadVariableOp2B
value_net/MatMul/ReadVariableOpvalue_net/MatMul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
*
à
C__inference_batch2_layer_call_and_return_conditional_losses_1809148

inputs6
'assignmovingavg_readvariableop_resource:	8
)assignmovingavg_1_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	2
moments/StopGradient¥
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices³
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay¥
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/mul¿
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
×#<2
AssignMovingAvg_1/decay«
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp¡
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/mulÉ
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
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
*
à
C__inference_batch3_layer_call_and_return_conditional_losses_1809310

inputs6
'assignmovingavg_readvariableop_resource:	8
)assignmovingavg_1_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	2
moments/StopGradient¥
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices³
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay¥
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/mul¿
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
×#<2
AssignMovingAvg_1/decay«
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp¡
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/mulÉ
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
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó
`
B__inference_drop1_layer_call_and_return_conditional_losses_1811079

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
á
ô
+__inference_noConv7x4_layer_call_fn_1810944

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:

	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:	

unknown_10:	

unknown_11:


unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	

unknown_17:


unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:	

unknown_22:	

unknown_23:	

unknown_24:

unknown_25:	

unknown_26:
identity

identity_1¢StatefulPartitionedCallè
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
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*6
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_noConv7x4_layer_call_and_return_conditional_losses_18101452
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
½
B
&__inference_act2_layer_call_fn_1811195

inputs
identityÃ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_act2_layer_call_and_return_conditional_losses_18096342
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ð
Ç
(__inference_batch1_layer_call_fn_1810987

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_batch1_layer_call_and_return_conditional_losses_18089262
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ö	
ö
C__inference_dense1_layer_call_and_return_conditional_losses_1810974

inputs1
matmul_readvariableop_resource:	.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú	
÷
C__inference_dense3_layer_call_and_return_conditional_losses_1811246

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
 V
Ô

F__inference_noConv7x4_layer_call_and_return_conditional_losses_1810349
	state_7_4!
dense1_1810273:	
dense1_1810275:	
batch1_1810278:	
batch1_1810280:	
batch1_1810282:	
batch1_1810284:	"
dense2_1810289:

dense2_1810291:	
batch2_1810294:	
batch2_1810296:	
batch2_1810298:	
batch2_1810300:	"
dense3_1810305:

dense3_1810307:	
batch3_1810310:	
batch3_1810312:	
batch3_1810314:	
batch3_1810316:	"
dense4_1810321:

dense4_1810323:	
batch4_1810326:	
batch4_1810328:	
batch4_1810330:	
batch4_1810332:	$
value_net_1810337:	
value_net_1810339:%
policy_net_1810342:	 
policy_net_1810344:
identity

identity_1¢batch1/StatefulPartitionedCall¢batch2/StatefulPartitionedCall¢batch3/StatefulPartitionedCall¢batch4/StatefulPartitionedCall¢dense1/StatefulPartitionedCall¢dense2/StatefulPartitionedCall¢dense3/StatefulPartitionedCall¢dense4/StatefulPartitionedCall¢"policy_net/StatefulPartitionedCall¢!value_net/StatefulPartitionedCallØ
flatten/PartitionedCallPartitionedCall	state_7_4*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_18095632
flatten/PartitionedCall«
dense1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense1_1810273dense1_1810275*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense1_layer_call_and_return_conditional_losses_18095752 
dense1/StatefulPartitionedCallÖ
batch1/StatefulPartitionedCallStatefulPartitionedCall'dense1/StatefulPartitionedCall:output:0batch1_1810278batch1_1810280batch1_1810282batch1_1810284*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_batch1_layer_call_and_return_conditional_losses_18089262 
batch1/StatefulPartitionedCallî
act1/PartitionedCallPartitionedCall'batch1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_act1_layer_call_and_return_conditional_losses_18095952
act1/PartitionedCallç
drop1/PartitionedCallPartitionedCallact1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_drop1_layer_call_and_return_conditional_losses_18096022
drop1/PartitionedCall©
dense2/StatefulPartitionedCallStatefulPartitionedCalldrop1/PartitionedCall:output:0dense2_1810289dense2_1810291*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense2_layer_call_and_return_conditional_losses_18096142 
dense2/StatefulPartitionedCallÖ
batch2/StatefulPartitionedCallStatefulPartitionedCall'dense2/StatefulPartitionedCall:output:0batch2_1810294batch2_1810296batch2_1810298batch2_1810300*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_batch2_layer_call_and_return_conditional_losses_18090882 
batch2/StatefulPartitionedCallî
act2/PartitionedCallPartitionedCall'batch2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_act2_layer_call_and_return_conditional_losses_18096342
act2/PartitionedCallç
drop2/PartitionedCallPartitionedCallact2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_drop2_layer_call_and_return_conditional_losses_18096412
drop2/PartitionedCall©
dense3/StatefulPartitionedCallStatefulPartitionedCalldrop2/PartitionedCall:output:0dense3_1810305dense3_1810307*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense3_layer_call_and_return_conditional_losses_18096532 
dense3/StatefulPartitionedCallÖ
batch3/StatefulPartitionedCallStatefulPartitionedCall'dense3/StatefulPartitionedCall:output:0batch3_1810310batch3_1810312batch3_1810314batch3_1810316*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_batch3_layer_call_and_return_conditional_losses_18092502 
batch3/StatefulPartitionedCallî
act3/PartitionedCallPartitionedCall'batch3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_act3_layer_call_and_return_conditional_losses_18096732
act3/PartitionedCallç
drop3/PartitionedCallPartitionedCallact3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_drop3_layer_call_and_return_conditional_losses_18096802
drop3/PartitionedCall©
dense4/StatefulPartitionedCallStatefulPartitionedCalldrop3/PartitionedCall:output:0dense4_1810321dense4_1810323*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense4_layer_call_and_return_conditional_losses_18096922 
dense4/StatefulPartitionedCallÖ
batch4/StatefulPartitionedCallStatefulPartitionedCall'dense4/StatefulPartitionedCall:output:0batch4_1810326batch4_1810328batch4_1810330batch4_1810332*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_batch4_layer_call_and_return_conditional_losses_18094122 
batch4/StatefulPartitionedCallî
act4/PartitionedCallPartitionedCall'batch4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_act4_layer_call_and_return_conditional_losses_18097122
act4/PartitionedCallç
drop4/PartitionedCallPartitionedCallact4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_drop4_layer_call_and_return_conditional_losses_18097192
drop4/PartitionedCall·
!value_net/StatefulPartitionedCallStatefulPartitionedCalldrop4/PartitionedCall:output:0value_net_1810337value_net_1810339*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_value_net_layer_call_and_return_conditional_losses_18097322#
!value_net/StatefulPartitionedCall¼
"policy_net/StatefulPartitionedCallStatefulPartitionedCalldrop4/PartitionedCall:output:0policy_net_1810342policy_net_1810344*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_policy_net_layer_call_and_return_conditional_losses_18097492$
"policy_net/StatefulPartitionedCallÐ
IdentityIdentity+policy_net/StatefulPartitionedCall:output:0^batch1/StatefulPartitionedCall^batch2/StatefulPartitionedCall^batch3/StatefulPartitionedCall^batch4/StatefulPartitionedCall^dense1/StatefulPartitionedCall^dense2/StatefulPartitionedCall^dense3/StatefulPartitionedCall^dense4/StatefulPartitionedCall#^policy_net/StatefulPartitionedCall"^value_net/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÓ

Identity_1Identity*value_net/StatefulPartitionedCall:output:0^batch1/StatefulPartitionedCall^batch2/StatefulPartitionedCall^batch3/StatefulPartitionedCall^batch4/StatefulPartitionedCall^dense1/StatefulPartitionedCall^dense2/StatefulPartitionedCall^dense3/StatefulPartitionedCall^dense4/StatefulPartitionedCall#^policy_net/StatefulPartitionedCall"^value_net/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
batch1/StatefulPartitionedCallbatch1/StatefulPartitionedCall2@
batch2/StatefulPartitionedCallbatch2/StatefulPartitionedCall2@
batch3/StatefulPartitionedCallbatch3/StatefulPartitionedCall2@
batch4/StatefulPartitionedCallbatch4/StatefulPartitionedCall2@
dense1/StatefulPartitionedCalldense1/StatefulPartitionedCall2@
dense2/StatefulPartitionedCalldense2/StatefulPartitionedCall2@
dense3/StatefulPartitionedCalldense3/StatefulPartitionedCall2@
dense4/StatefulPartitionedCalldense4/StatefulPartitionedCall2H
"policy_net/StatefulPartitionedCall"policy_net/StatefulPartitionedCall2F
!value_net/StatefulPartitionedCall!value_net/StatefulPartitionedCall:V R
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#
_user_specified_name	state_7_4
Ú	
÷
C__inference_dense2_layer_call_and_return_conditional_losses_1809614

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ý
]
A__inference_act3_layer_call_and_return_conditional_losses_1811336

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó
`
B__inference_drop4_layer_call_and_return_conditional_losses_1809719

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
 

(__inference_dense1_layer_call_fn_1810964

inputs
unknown:	
	unknown_0:	
identity¢StatefulPartitionedCall÷
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense1_layer_call_and_return_conditional_losses_18095752
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
½
B
&__inference_act3_layer_call_fn_1811331

inputs
identityÃ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_act3_layer_call_and_return_conditional_losses_18096732
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ý
]
A__inference_act4_layer_call_and_return_conditional_losses_1809712

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¨

ø
F__inference_value_net_layer_call_and_return_conditional_losses_1809732

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tanh
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ö	
ö
C__inference_dense1_layer_call_and_return_conditional_losses_1809575

inputs1
matmul_readvariableop_resource:	.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ò
÷
+__inference_noConv7x4_layer_call_fn_1809818
	state_7_4
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:

	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:	

unknown_10:	

unknown_11:


unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	

unknown_17:


unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:	

unknown_22:	

unknown_23:	

unknown_24:

unknown_25:	

unknown_26:
identity

identity_1¢StatefulPartitionedCalló
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
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_noConv7x4_layer_call_and_return_conditional_losses_18097572
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#
_user_specified_name	state_7_4
é
ô
+__inference_noConv7x4_layer_call_fn_1810881

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:

	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:	

unknown_10:	

unknown_11:


unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	

unknown_17:


unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:	

unknown_22:	

unknown_23:	

unknown_24:

unknown_25:	

unknown_26:
identity

identity_1¢StatefulPartitionedCallð
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
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_noConv7x4_layer_call_and_return_conditional_losses_18097572
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ý
]
A__inference_act1_layer_call_and_return_conditional_losses_1811064

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ë
`
'__inference_drop4_layer_call_fn_1811482

inputs
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_drop4_layer_call_and_return_conditional_losses_18098582
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
½
B
&__inference_act1_layer_call_fn_1811059

inputs
identityÃ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_act1_layer_call_and_return_conditional_losses_18095952
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó
`
B__inference_drop2_layer_call_and_return_conditional_losses_1811215

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¿
C
'__inference_drop3_layer_call_fn_1811341

inputs
identityÄ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_drop3_layer_call_and_return_conditional_losses_18096802
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ð
Ç
(__inference_batch4_layer_call_fn_1811395

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_batch4_layer_call_and_return_conditional_losses_18094122
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
±
a
B__inference_drop3_layer_call_and_return_conditional_losses_1811363

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeµ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout/GreaterEqual/y¿
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
»

ù
G__inference_policy_net_layer_call_and_return_conditional_losses_1809749

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó
`
B__inference_drop3_layer_call_and_return_conditional_losses_1811351

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
±
a
B__inference_drop4_layer_call_and_return_conditional_losses_1811499

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeµ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout/GreaterEqual/y¿
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
V
Ñ

F__inference_noConv7x4_layer_call_and_return_conditional_losses_1809757

inputs!
dense1_1809576:	
dense1_1809578:	
batch1_1809581:	
batch1_1809583:	
batch1_1809585:	
batch1_1809587:	"
dense2_1809615:

dense2_1809617:	
batch2_1809620:	
batch2_1809622:	
batch2_1809624:	
batch2_1809626:	"
dense3_1809654:

dense3_1809656:	
batch3_1809659:	
batch3_1809661:	
batch3_1809663:	
batch3_1809665:	"
dense4_1809693:

dense4_1809695:	
batch4_1809698:	
batch4_1809700:	
batch4_1809702:	
batch4_1809704:	$
value_net_1809733:	
value_net_1809735:%
policy_net_1809750:	 
policy_net_1809752:
identity

identity_1¢batch1/StatefulPartitionedCall¢batch2/StatefulPartitionedCall¢batch3/StatefulPartitionedCall¢batch4/StatefulPartitionedCall¢dense1/StatefulPartitionedCall¢dense2/StatefulPartitionedCall¢dense3/StatefulPartitionedCall¢dense4/StatefulPartitionedCall¢"policy_net/StatefulPartitionedCall¢!value_net/StatefulPartitionedCallÕ
flatten/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_18095632
flatten/PartitionedCall«
dense1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense1_1809576dense1_1809578*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense1_layer_call_and_return_conditional_losses_18095752 
dense1/StatefulPartitionedCallÖ
batch1/StatefulPartitionedCallStatefulPartitionedCall'dense1/StatefulPartitionedCall:output:0batch1_1809581batch1_1809583batch1_1809585batch1_1809587*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_batch1_layer_call_and_return_conditional_losses_18089262 
batch1/StatefulPartitionedCallî
act1/PartitionedCallPartitionedCall'batch1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_act1_layer_call_and_return_conditional_losses_18095952
act1/PartitionedCallç
drop1/PartitionedCallPartitionedCallact1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_drop1_layer_call_and_return_conditional_losses_18096022
drop1/PartitionedCall©
dense2/StatefulPartitionedCallStatefulPartitionedCalldrop1/PartitionedCall:output:0dense2_1809615dense2_1809617*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense2_layer_call_and_return_conditional_losses_18096142 
dense2/StatefulPartitionedCallÖ
batch2/StatefulPartitionedCallStatefulPartitionedCall'dense2/StatefulPartitionedCall:output:0batch2_1809620batch2_1809622batch2_1809624batch2_1809626*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_batch2_layer_call_and_return_conditional_losses_18090882 
batch2/StatefulPartitionedCallî
act2/PartitionedCallPartitionedCall'batch2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_act2_layer_call_and_return_conditional_losses_18096342
act2/PartitionedCallç
drop2/PartitionedCallPartitionedCallact2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_drop2_layer_call_and_return_conditional_losses_18096412
drop2/PartitionedCall©
dense3/StatefulPartitionedCallStatefulPartitionedCalldrop2/PartitionedCall:output:0dense3_1809654dense3_1809656*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense3_layer_call_and_return_conditional_losses_18096532 
dense3/StatefulPartitionedCallÖ
batch3/StatefulPartitionedCallStatefulPartitionedCall'dense3/StatefulPartitionedCall:output:0batch3_1809659batch3_1809661batch3_1809663batch3_1809665*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_batch3_layer_call_and_return_conditional_losses_18092502 
batch3/StatefulPartitionedCallî
act3/PartitionedCallPartitionedCall'batch3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_act3_layer_call_and_return_conditional_losses_18096732
act3/PartitionedCallç
drop3/PartitionedCallPartitionedCallact3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_drop3_layer_call_and_return_conditional_losses_18096802
drop3/PartitionedCall©
dense4/StatefulPartitionedCallStatefulPartitionedCalldrop3/PartitionedCall:output:0dense4_1809693dense4_1809695*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense4_layer_call_and_return_conditional_losses_18096922 
dense4/StatefulPartitionedCallÖ
batch4/StatefulPartitionedCallStatefulPartitionedCall'dense4/StatefulPartitionedCall:output:0batch4_1809698batch4_1809700batch4_1809702batch4_1809704*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_batch4_layer_call_and_return_conditional_losses_18094122 
batch4/StatefulPartitionedCallî
act4/PartitionedCallPartitionedCall'batch4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_act4_layer_call_and_return_conditional_losses_18097122
act4/PartitionedCallç
drop4/PartitionedCallPartitionedCallact4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_drop4_layer_call_and_return_conditional_losses_18097192
drop4/PartitionedCall·
!value_net/StatefulPartitionedCallStatefulPartitionedCalldrop4/PartitionedCall:output:0value_net_1809733value_net_1809735*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_value_net_layer_call_and_return_conditional_losses_18097322#
!value_net/StatefulPartitionedCall¼
"policy_net/StatefulPartitionedCallStatefulPartitionedCalldrop4/PartitionedCall:output:0policy_net_1809750policy_net_1809752*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_policy_net_layer_call_and_return_conditional_losses_18097492$
"policy_net/StatefulPartitionedCallÐ
IdentityIdentity+policy_net/StatefulPartitionedCall:output:0^batch1/StatefulPartitionedCall^batch2/StatefulPartitionedCall^batch3/StatefulPartitionedCall^batch4/StatefulPartitionedCall^dense1/StatefulPartitionedCall^dense2/StatefulPartitionedCall^dense3/StatefulPartitionedCall^dense4/StatefulPartitionedCall#^policy_net/StatefulPartitionedCall"^value_net/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÓ

Identity_1Identity*value_net/StatefulPartitionedCall:output:0^batch1/StatefulPartitionedCall^batch2/StatefulPartitionedCall^batch3/StatefulPartitionedCall^batch4/StatefulPartitionedCall^dense1/StatefulPartitionedCall^dense2/StatefulPartitionedCall^dense3/StatefulPartitionedCall^dense4/StatefulPartitionedCall#^policy_net/StatefulPartitionedCall"^value_net/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
batch1/StatefulPartitionedCallbatch1/StatefulPartitionedCall2@
batch2/StatefulPartitionedCallbatch2/StatefulPartitionedCall2@
batch3/StatefulPartitionedCallbatch3/StatefulPartitionedCall2@
batch4/StatefulPartitionedCallbatch4/StatefulPartitionedCall2@
dense1/StatefulPartitionedCalldense1/StatefulPartitionedCall2@
dense2/StatefulPartitionedCalldense2/StatefulPartitionedCall2@
dense3/StatefulPartitionedCalldense3/StatefulPartitionedCall2@
dense4/StatefulPartitionedCalldense4/StatefulPartitionedCall2H
"policy_net/StatefulPartitionedCall"policy_net/StatefulPartitionedCall2F
!value_net/StatefulPartitionedCall!value_net/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó
`
B__inference_drop1_layer_call_and_return_conditional_losses_1809602

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢
¦
C__inference_batch3_layer_call_and_return_conditional_losses_1809250

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1Ü
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ë
`
'__inference_drop3_layer_call_fn_1811346

inputs
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_drop3_layer_call_and_return_conditional_losses_18098972
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
î
Ç
(__inference_batch1_layer_call_fn_1811000

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_batch1_layer_call_and_return_conditional_losses_18089862
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¿
C
'__inference_drop2_layer_call_fn_1811205

inputs
identityÄ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_drop2_layer_call_and_return_conditional_losses_18096412
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ü
`
D__inference_flatten_layer_call_and_return_conditional_losses_1809563

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
±
a
B__inference_drop1_layer_call_and_return_conditional_losses_1811091

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeµ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout/GreaterEqual/y¿
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ð
Ç
(__inference_batch2_layer_call_fn_1811123

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_batch2_layer_call_and_return_conditional_losses_18090882
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
*
à
C__inference_batch2_layer_call_and_return_conditional_losses_1811190

inputs6
'assignmovingavg_readvariableop_resource:	8
)assignmovingavg_1_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	2
moments/StopGradient¥
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices³
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay¥
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/mul¿
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
×#<2
AssignMovingAvg_1/decay«
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp¡
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/mulÉ
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
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
*
à
C__inference_batch4_layer_call_and_return_conditional_losses_1809472

inputs6
'assignmovingavg_readvariableop_resource:	8
)assignmovingavg_1_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	2
moments/StopGradient¥
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices³
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay¥
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/mul¿
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
×#<2
AssignMovingAvg_1/decay«
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp¡
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/mulÉ
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
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢
¦
C__inference_batch4_layer_call_and_return_conditional_losses_1809412

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1Ü
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬
¢
F__inference_noConv7x4_layer_call_and_return_conditional_losses_1810617

inputs8
%dense1_matmul_readvariableop_resource:	5
&dense1_biasadd_readvariableop_resource:	7
(batch1_batchnorm_readvariableop_resource:	;
,batch1_batchnorm_mul_readvariableop_resource:	9
*batch1_batchnorm_readvariableop_1_resource:	9
*batch1_batchnorm_readvariableop_2_resource:	9
%dense2_matmul_readvariableop_resource:
5
&dense2_biasadd_readvariableop_resource:	7
(batch2_batchnorm_readvariableop_resource:	;
,batch2_batchnorm_mul_readvariableop_resource:	9
*batch2_batchnorm_readvariableop_1_resource:	9
*batch2_batchnorm_readvariableop_2_resource:	9
%dense3_matmul_readvariableop_resource:
5
&dense3_biasadd_readvariableop_resource:	7
(batch3_batchnorm_readvariableop_resource:	;
,batch3_batchnorm_mul_readvariableop_resource:	9
*batch3_batchnorm_readvariableop_1_resource:	9
*batch3_batchnorm_readvariableop_2_resource:	9
%dense4_matmul_readvariableop_resource:
5
&dense4_biasadd_readvariableop_resource:	7
(batch4_batchnorm_readvariableop_resource:	;
,batch4_batchnorm_mul_readvariableop_resource:	9
*batch4_batchnorm_readvariableop_1_resource:	9
*batch4_batchnorm_readvariableop_2_resource:	;
(value_net_matmul_readvariableop_resource:	7
)value_net_biasadd_readvariableop_resource:<
)policy_net_matmul_readvariableop_resource:	8
*policy_net_biasadd_readvariableop_resource:
identity

identity_1¢batch1/batchnorm/ReadVariableOp¢!batch1/batchnorm/ReadVariableOp_1¢!batch1/batchnorm/ReadVariableOp_2¢#batch1/batchnorm/mul/ReadVariableOp¢batch2/batchnorm/ReadVariableOp¢!batch2/batchnorm/ReadVariableOp_1¢!batch2/batchnorm/ReadVariableOp_2¢#batch2/batchnorm/mul/ReadVariableOp¢batch3/batchnorm/ReadVariableOp¢!batch3/batchnorm/ReadVariableOp_1¢!batch3/batchnorm/ReadVariableOp_2¢#batch3/batchnorm/mul/ReadVariableOp¢batch4/batchnorm/ReadVariableOp¢!batch4/batchnorm/ReadVariableOp_1¢!batch4/batchnorm/ReadVariableOp_2¢#batch4/batchnorm/mul/ReadVariableOp¢dense1/BiasAdd/ReadVariableOp¢dense1/MatMul/ReadVariableOp¢dense2/BiasAdd/ReadVariableOp¢dense2/MatMul/ReadVariableOp¢dense3/BiasAdd/ReadVariableOp¢dense3/MatMul/ReadVariableOp¢dense4/BiasAdd/ReadVariableOp¢dense4/MatMul/ReadVariableOp¢!policy_net/BiasAdd/ReadVariableOp¢ policy_net/MatMul/ReadVariableOp¢ value_net/BiasAdd/ReadVariableOp¢value_net/MatMul/ReadVariableOpo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
flatten/Const
flatten/ReshapeReshapeinputsflatten/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
flatten/Reshape£
dense1/MatMul/ReadVariableOpReadVariableOp%dense1_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02
dense1/MatMul/ReadVariableOp
dense1/MatMulMatMulflatten/Reshape:output:0$dense1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense1/MatMul¢
dense1/BiasAdd/ReadVariableOpReadVariableOp&dense1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
dense1/BiasAdd/ReadVariableOp
dense1/BiasAddBiasAdddense1/MatMul:product:0%dense1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense1/BiasAdd¨
batch1/batchnorm/ReadVariableOpReadVariableOp(batch1_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02!
batch1/batchnorm/ReadVariableOpu
batch1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batch1/batchnorm/add/y¥
batch1/batchnorm/addAddV2'batch1/batchnorm/ReadVariableOp:value:0batch1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batch1/batchnorm/addy
batch1/batchnorm/RsqrtRsqrtbatch1/batchnorm/add:z:0*
T0*
_output_shapes	
:2
batch1/batchnorm/Rsqrt´
#batch1/batchnorm/mul/ReadVariableOpReadVariableOp,batch1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02%
#batch1/batchnorm/mul/ReadVariableOp¢
batch1/batchnorm/mulMulbatch1/batchnorm/Rsqrt:y:0+batch1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batch1/batchnorm/mul
batch1/batchnorm/mul_1Muldense1/BiasAdd:output:0batch1/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batch1/batchnorm/mul_1®
!batch1/batchnorm/ReadVariableOp_1ReadVariableOp*batch1_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!batch1/batchnorm/ReadVariableOp_1¢
batch1/batchnorm/mul_2Mul)batch1/batchnorm/ReadVariableOp_1:value:0batch1/batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batch1/batchnorm/mul_2®
!batch1/batchnorm/ReadVariableOp_2ReadVariableOp*batch1_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02#
!batch1/batchnorm/ReadVariableOp_2 
batch1/batchnorm/subSub)batch1/batchnorm/ReadVariableOp_2:value:0batch1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batch1/batchnorm/sub¢
batch1/batchnorm/add_1AddV2batch1/batchnorm/mul_1:z:0batch1/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batch1/batchnorm/add_1m
	act1/ReluRelubatch1/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	act1/Relux
drop1/IdentityIdentityact1/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
drop1/Identity¤
dense2/MatMul/ReadVariableOpReadVariableOp%dense2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
dense2/MatMul/ReadVariableOp
dense2/MatMulMatMuldrop1/Identity:output:0$dense2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense2/MatMul¢
dense2/BiasAdd/ReadVariableOpReadVariableOp&dense2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
dense2/BiasAdd/ReadVariableOp
dense2/BiasAddBiasAdddense2/MatMul:product:0%dense2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense2/BiasAdd¨
batch2/batchnorm/ReadVariableOpReadVariableOp(batch2_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02!
batch2/batchnorm/ReadVariableOpu
batch2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batch2/batchnorm/add/y¥
batch2/batchnorm/addAddV2'batch2/batchnorm/ReadVariableOp:value:0batch2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batch2/batchnorm/addy
batch2/batchnorm/RsqrtRsqrtbatch2/batchnorm/add:z:0*
T0*
_output_shapes	
:2
batch2/batchnorm/Rsqrt´
#batch2/batchnorm/mul/ReadVariableOpReadVariableOp,batch2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02%
#batch2/batchnorm/mul/ReadVariableOp¢
batch2/batchnorm/mulMulbatch2/batchnorm/Rsqrt:y:0+batch2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batch2/batchnorm/mul
batch2/batchnorm/mul_1Muldense2/BiasAdd:output:0batch2/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batch2/batchnorm/mul_1®
!batch2/batchnorm/ReadVariableOp_1ReadVariableOp*batch2_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!batch2/batchnorm/ReadVariableOp_1¢
batch2/batchnorm/mul_2Mul)batch2/batchnorm/ReadVariableOp_1:value:0batch2/batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batch2/batchnorm/mul_2®
!batch2/batchnorm/ReadVariableOp_2ReadVariableOp*batch2_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02#
!batch2/batchnorm/ReadVariableOp_2 
batch2/batchnorm/subSub)batch2/batchnorm/ReadVariableOp_2:value:0batch2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batch2/batchnorm/sub¢
batch2/batchnorm/add_1AddV2batch2/batchnorm/mul_1:z:0batch2/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batch2/batchnorm/add_1m
	act2/ReluRelubatch2/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	act2/Relux
drop2/IdentityIdentityact2/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
drop2/Identity¤
dense3/MatMul/ReadVariableOpReadVariableOp%dense3_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
dense3/MatMul/ReadVariableOp
dense3/MatMulMatMuldrop2/Identity:output:0$dense3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense3/MatMul¢
dense3/BiasAdd/ReadVariableOpReadVariableOp&dense3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
dense3/BiasAdd/ReadVariableOp
dense3/BiasAddBiasAdddense3/MatMul:product:0%dense3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense3/BiasAdd¨
batch3/batchnorm/ReadVariableOpReadVariableOp(batch3_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02!
batch3/batchnorm/ReadVariableOpu
batch3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batch3/batchnorm/add/y¥
batch3/batchnorm/addAddV2'batch3/batchnorm/ReadVariableOp:value:0batch3/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batch3/batchnorm/addy
batch3/batchnorm/RsqrtRsqrtbatch3/batchnorm/add:z:0*
T0*
_output_shapes	
:2
batch3/batchnorm/Rsqrt´
#batch3/batchnorm/mul/ReadVariableOpReadVariableOp,batch3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02%
#batch3/batchnorm/mul/ReadVariableOp¢
batch3/batchnorm/mulMulbatch3/batchnorm/Rsqrt:y:0+batch3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batch3/batchnorm/mul
batch3/batchnorm/mul_1Muldense3/BiasAdd:output:0batch3/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batch3/batchnorm/mul_1®
!batch3/batchnorm/ReadVariableOp_1ReadVariableOp*batch3_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!batch3/batchnorm/ReadVariableOp_1¢
batch3/batchnorm/mul_2Mul)batch3/batchnorm/ReadVariableOp_1:value:0batch3/batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batch3/batchnorm/mul_2®
!batch3/batchnorm/ReadVariableOp_2ReadVariableOp*batch3_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02#
!batch3/batchnorm/ReadVariableOp_2 
batch3/batchnorm/subSub)batch3/batchnorm/ReadVariableOp_2:value:0batch3/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batch3/batchnorm/sub¢
batch3/batchnorm/add_1AddV2batch3/batchnorm/mul_1:z:0batch3/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batch3/batchnorm/add_1m
	act3/ReluRelubatch3/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	act3/Relux
drop3/IdentityIdentityact3/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
drop3/Identity¤
dense4/MatMul/ReadVariableOpReadVariableOp%dense4_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
dense4/MatMul/ReadVariableOp
dense4/MatMulMatMuldrop3/Identity:output:0$dense4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense4/MatMul¢
dense4/BiasAdd/ReadVariableOpReadVariableOp&dense4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
dense4/BiasAdd/ReadVariableOp
dense4/BiasAddBiasAdddense4/MatMul:product:0%dense4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense4/BiasAdd¨
batch4/batchnorm/ReadVariableOpReadVariableOp(batch4_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02!
batch4/batchnorm/ReadVariableOpu
batch4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batch4/batchnorm/add/y¥
batch4/batchnorm/addAddV2'batch4/batchnorm/ReadVariableOp:value:0batch4/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batch4/batchnorm/addy
batch4/batchnorm/RsqrtRsqrtbatch4/batchnorm/add:z:0*
T0*
_output_shapes	
:2
batch4/batchnorm/Rsqrt´
#batch4/batchnorm/mul/ReadVariableOpReadVariableOp,batch4_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02%
#batch4/batchnorm/mul/ReadVariableOp¢
batch4/batchnorm/mulMulbatch4/batchnorm/Rsqrt:y:0+batch4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batch4/batchnorm/mul
batch4/batchnorm/mul_1Muldense4/BiasAdd:output:0batch4/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batch4/batchnorm/mul_1®
!batch4/batchnorm/ReadVariableOp_1ReadVariableOp*batch4_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!batch4/batchnorm/ReadVariableOp_1¢
batch4/batchnorm/mul_2Mul)batch4/batchnorm/ReadVariableOp_1:value:0batch4/batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batch4/batchnorm/mul_2®
!batch4/batchnorm/ReadVariableOp_2ReadVariableOp*batch4_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02#
!batch4/batchnorm/ReadVariableOp_2 
batch4/batchnorm/subSub)batch4/batchnorm/ReadVariableOp_2:value:0batch4/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batch4/batchnorm/sub¢
batch4/batchnorm/add_1AddV2batch4/batchnorm/mul_1:z:0batch4/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batch4/batchnorm/add_1m
	act4/ReluRelubatch4/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	act4/Relux
drop4/IdentityIdentityact4/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
drop4/Identity¬
value_net/MatMul/ReadVariableOpReadVariableOp(value_net_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02!
value_net/MatMul/ReadVariableOp¢
value_net/MatMulMatMuldrop4/Identity:output:0'value_net/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
value_net/MatMulª
 value_net/BiasAdd/ReadVariableOpReadVariableOp)value_net_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 value_net/BiasAdd/ReadVariableOp©
value_net/BiasAddBiasAddvalue_net/MatMul:product:0(value_net/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
value_net/BiasAddv
value_net/TanhTanhvalue_net/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
value_net/Tanh¯
 policy_net/MatMul/ReadVariableOpReadVariableOp)policy_net_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02"
 policy_net/MatMul/ReadVariableOp¥
policy_net/MatMulMatMuldrop4/Identity:output:0(policy_net/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
policy_net/MatMul­
!policy_net/BiasAdd/ReadVariableOpReadVariableOp*policy_net_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!policy_net/BiasAdd/ReadVariableOp­
policy_net/BiasAddBiasAddpolicy_net/MatMul:product:0)policy_net/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
policy_net/BiasAdd
policy_net/SoftmaxSoftmaxpolicy_net/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
policy_net/Softmax¸
IdentityIdentitypolicy_net/Softmax:softmax:0 ^batch1/batchnorm/ReadVariableOp"^batch1/batchnorm/ReadVariableOp_1"^batch1/batchnorm/ReadVariableOp_2$^batch1/batchnorm/mul/ReadVariableOp ^batch2/batchnorm/ReadVariableOp"^batch2/batchnorm/ReadVariableOp_1"^batch2/batchnorm/ReadVariableOp_2$^batch2/batchnorm/mul/ReadVariableOp ^batch3/batchnorm/ReadVariableOp"^batch3/batchnorm/ReadVariableOp_1"^batch3/batchnorm/ReadVariableOp_2$^batch3/batchnorm/mul/ReadVariableOp ^batch4/batchnorm/ReadVariableOp"^batch4/batchnorm/ReadVariableOp_1"^batch4/batchnorm/ReadVariableOp_2$^batch4/batchnorm/mul/ReadVariableOp^dense1/BiasAdd/ReadVariableOp^dense1/MatMul/ReadVariableOp^dense2/BiasAdd/ReadVariableOp^dense2/MatMul/ReadVariableOp^dense3/BiasAdd/ReadVariableOp^dense3/MatMul/ReadVariableOp^dense4/BiasAdd/ReadVariableOp^dense4/MatMul/ReadVariableOp"^policy_net/BiasAdd/ReadVariableOp!^policy_net/MatMul/ReadVariableOp!^value_net/BiasAdd/ReadVariableOp ^value_net/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity²

Identity_1Identityvalue_net/Tanh:y:0 ^batch1/batchnorm/ReadVariableOp"^batch1/batchnorm/ReadVariableOp_1"^batch1/batchnorm/ReadVariableOp_2$^batch1/batchnorm/mul/ReadVariableOp ^batch2/batchnorm/ReadVariableOp"^batch2/batchnorm/ReadVariableOp_1"^batch2/batchnorm/ReadVariableOp_2$^batch2/batchnorm/mul/ReadVariableOp ^batch3/batchnorm/ReadVariableOp"^batch3/batchnorm/ReadVariableOp_1"^batch3/batchnorm/ReadVariableOp_2$^batch3/batchnorm/mul/ReadVariableOp ^batch4/batchnorm/ReadVariableOp"^batch4/batchnorm/ReadVariableOp_1"^batch4/batchnorm/ReadVariableOp_2$^batch4/batchnorm/mul/ReadVariableOp^dense1/BiasAdd/ReadVariableOp^dense1/MatMul/ReadVariableOp^dense2/BiasAdd/ReadVariableOp^dense2/MatMul/ReadVariableOp^dense3/BiasAdd/ReadVariableOp^dense3/MatMul/ReadVariableOp^dense4/BiasAdd/ReadVariableOp^dense4/MatMul/ReadVariableOp"^policy_net/BiasAdd/ReadVariableOp!^policy_net/MatMul/ReadVariableOp!^value_net/BiasAdd/ReadVariableOp ^value_net/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
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
#batch3/batchnorm/mul/ReadVariableOp#batch3/batchnorm/mul/ReadVariableOp2B
batch4/batchnorm/ReadVariableOpbatch4/batchnorm/ReadVariableOp2F
!batch4/batchnorm/ReadVariableOp_1!batch4/batchnorm/ReadVariableOp_12F
!batch4/batchnorm/ReadVariableOp_2!batch4/batchnorm/ReadVariableOp_22J
#batch4/batchnorm/mul/ReadVariableOp#batch4/batchnorm/mul/ReadVariableOp2>
dense1/BiasAdd/ReadVariableOpdense1/BiasAdd/ReadVariableOp2<
dense1/MatMul/ReadVariableOpdense1/MatMul/ReadVariableOp2>
dense2/BiasAdd/ReadVariableOpdense2/BiasAdd/ReadVariableOp2<
dense2/MatMul/ReadVariableOpdense2/MatMul/ReadVariableOp2>
dense3/BiasAdd/ReadVariableOpdense3/BiasAdd/ReadVariableOp2<
dense3/MatMul/ReadVariableOpdense3/MatMul/ReadVariableOp2>
dense4/BiasAdd/ReadVariableOpdense4/BiasAdd/ReadVariableOp2<
dense4/MatMul/ReadVariableOpdense4/MatMul/ReadVariableOp2F
!policy_net/BiasAdd/ReadVariableOp!policy_net/BiasAdd/ReadVariableOp2D
 policy_net/MatMul/ReadVariableOp policy_net/MatMul/ReadVariableOp2D
 value_net/BiasAdd/ReadVariableOp value_net/BiasAdd/ReadVariableOp2B
value_net/MatMul/ReadVariableOpvalue_net/MatMul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú	
÷
C__inference_dense3_layer_call_and_return_conditional_losses_1809653

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢
¦
C__inference_batch2_layer_call_and_return_conditional_losses_1811156

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1Ü
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô
£
 __inference__traced_save_1811800
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
1savev2_batch3_moving_variance_read_readvariableop,
(savev2_dense4_kernel_read_readvariableop*
&savev2_dense4_bias_read_readvariableop+
'savev2_batch4_gamma_read_readvariableop*
&savev2_batch4_beta_read_readvariableop1
-savev2_batch4_moving_mean_read_readvariableop5
1savev2_batch4_moving_variance_read_readvariableop0
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
-savev2_adam_batch3_beta_m_read_readvariableop3
/savev2_adam_dense4_kernel_m_read_readvariableop1
-savev2_adam_dense4_bias_m_read_readvariableop2
.savev2_adam_batch4_gamma_m_read_readvariableop1
-savev2_adam_batch4_beta_m_read_readvariableop7
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
-savev2_adam_batch3_beta_v_read_readvariableop3
/savev2_adam_dense4_kernel_v_read_readvariableop1
-savev2_adam_dense4_bias_v_read_readvariableop2
.savev2_adam_batch4_gamma_v_read_readvariableop1
-savev2_adam_batch4_beta_v_read_readvariableop7
3savev2_adam_policy_net_kernel_v_read_readvariableop5
1savev2_adam_policy_net_bias_v_read_readvariableop6
2savev2_adam_value_net_kernel_v_read_readvariableop4
0savev2_adam_value_net_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
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
Const_1
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
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameú+
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:P*
dtype0*+
value+Bÿ*PB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names«
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:P*
dtype0*µ
value«B¨PB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_dense1_kernel_read_readvariableop&savev2_dense1_bias_read_readvariableop'savev2_batch1_gamma_read_readvariableop&savev2_batch1_beta_read_readvariableop-savev2_batch1_moving_mean_read_readvariableop1savev2_batch1_moving_variance_read_readvariableop(savev2_dense2_kernel_read_readvariableop&savev2_dense2_bias_read_readvariableop'savev2_batch2_gamma_read_readvariableop&savev2_batch2_beta_read_readvariableop-savev2_batch2_moving_mean_read_readvariableop1savev2_batch2_moving_variance_read_readvariableop(savev2_dense3_kernel_read_readvariableop&savev2_dense3_bias_read_readvariableop'savev2_batch3_gamma_read_readvariableop&savev2_batch3_beta_read_readvariableop-savev2_batch3_moving_mean_read_readvariableop1savev2_batch3_moving_variance_read_readvariableop(savev2_dense4_kernel_read_readvariableop&savev2_dense4_bias_read_readvariableop'savev2_batch4_gamma_read_readvariableop&savev2_batch4_beta_read_readvariableop-savev2_batch4_moving_mean_read_readvariableop1savev2_batch4_moving_variance_read_readvariableop,savev2_policy_net_kernel_read_readvariableop*savev2_policy_net_bias_read_readvariableop+savev2_value_net_kernel_read_readvariableop)savev2_value_net_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop/savev2_adam_dense1_kernel_m_read_readvariableop-savev2_adam_dense1_bias_m_read_readvariableop.savev2_adam_batch1_gamma_m_read_readvariableop-savev2_adam_batch1_beta_m_read_readvariableop/savev2_adam_dense2_kernel_m_read_readvariableop-savev2_adam_dense2_bias_m_read_readvariableop.savev2_adam_batch2_gamma_m_read_readvariableop-savev2_adam_batch2_beta_m_read_readvariableop/savev2_adam_dense3_kernel_m_read_readvariableop-savev2_adam_dense3_bias_m_read_readvariableop.savev2_adam_batch3_gamma_m_read_readvariableop-savev2_adam_batch3_beta_m_read_readvariableop/savev2_adam_dense4_kernel_m_read_readvariableop-savev2_adam_dense4_bias_m_read_readvariableop.savev2_adam_batch4_gamma_m_read_readvariableop-savev2_adam_batch4_beta_m_read_readvariableop3savev2_adam_policy_net_kernel_m_read_readvariableop1savev2_adam_policy_net_bias_m_read_readvariableop2savev2_adam_value_net_kernel_m_read_readvariableop0savev2_adam_value_net_bias_m_read_readvariableop/savev2_adam_dense1_kernel_v_read_readvariableop-savev2_adam_dense1_bias_v_read_readvariableop.savev2_adam_batch1_gamma_v_read_readvariableop-savev2_adam_batch1_beta_v_read_readvariableop/savev2_adam_dense2_kernel_v_read_readvariableop-savev2_adam_dense2_bias_v_read_readvariableop.savev2_adam_batch2_gamma_v_read_readvariableop-savev2_adam_batch2_beta_v_read_readvariableop/savev2_adam_dense3_kernel_v_read_readvariableop-savev2_adam_dense3_bias_v_read_readvariableop.savev2_adam_batch3_gamma_v_read_readvariableop-savev2_adam_batch3_beta_v_read_readvariableop/savev2_adam_dense4_kernel_v_read_readvariableop-savev2_adam_dense4_bias_v_read_readvariableop.savev2_adam_batch4_gamma_v_read_readvariableop-savev2_adam_batch4_beta_v_read_readvariableop3savev2_adam_policy_net_kernel_v_read_readvariableop1savev2_adam_policy_net_bias_v_read_readvariableop2savev2_adam_value_net_kernel_v_read_readvariableop0savev2_adam_value_net_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *^
dtypesT
R2P	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
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

identity_1Identity_1:output:0*Ö
_input_shapesÄ
Á: :	::::::
::::::
::::::
::::::	::	:: : : : : : : : : : : :	::::
::::
::::
::::	::	::	::::
::::
::::
::::	::	:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	:!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::!	

_output_shapes	
::!


_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::%!

_output_shapes
:	: 

_output_shapes
::%!

_output_shapes
:	: 

_output_shapes
::
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
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :%(!

_output_shapes
:	:!)

_output_shapes	
::!*

_output_shapes	
::!+

_output_shapes	
::&,"
 
_output_shapes
:
:!-

_output_shapes	
::!.

_output_shapes	
::!/

_output_shapes	
::&0"
 
_output_shapes
:
:!1

_output_shapes	
::!2

_output_shapes	
::!3

_output_shapes	
::&4"
 
_output_shapes
:
:!5

_output_shapes	
::!6

_output_shapes	
::!7

_output_shapes	
::%8!

_output_shapes
:	: 9

_output_shapes
::%:!

_output_shapes
:	: ;

_output_shapes
::%<!

_output_shapes
:	:!=

_output_shapes	
::!>

_output_shapes	
::!?

_output_shapes	
::&@"
 
_output_shapes
:
:!A

_output_shapes	
::!B

_output_shapes	
::!C

_output_shapes	
::&D"
 
_output_shapes
:
:!E

_output_shapes	
::!F

_output_shapes	
::!G

_output_shapes	
::&H"
 
_output_shapes
:
:!I

_output_shapes	
::!J

_output_shapes	
::!K

_output_shapes	
::%L!

_output_shapes
:	: M

_output_shapes
::%N!

_output_shapes
:	: O

_output_shapes
::P

_output_shapes
: 
¿
C
'__inference_drop1_layer_call_fn_1811069

inputs
identityÄ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_drop1_layer_call_and_return_conditional_losses_18096022
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó
`
B__inference_drop4_layer_call_and_return_conditional_losses_1811487

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú	
÷
C__inference_dense2_layer_call_and_return_conditional_losses_1811110

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
»

ù
G__inference_policy_net_layer_call_and_return_conditional_losses_1811519

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ç
E
)__inference_flatten_layer_call_fn_1810949

inputs
identityÅ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_18095632
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
±
a
B__inference_drop2_layer_call_and_return_conditional_losses_1809936

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeµ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout/GreaterEqual/y¿
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
*
à
C__inference_batch1_layer_call_and_return_conditional_losses_1811054

inputs6
'assignmovingavg_readvariableop_resource:	8
)assignmovingavg_1_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	2
moments/StopGradient¥
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices³
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay¥
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/mul¿
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
×#<2
AssignMovingAvg_1/decay«
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp¡
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/mulÉ
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
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ý
]
A__inference_act3_layer_call_and_return_conditional_losses_1809673

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
±
a
B__inference_drop2_layer_call_and_return_conditional_losses_1811227

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeµ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout/GreaterEqual/y¿
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
õÌ
/
#__inference__traced_restore_1812047
file_prefix1
assignvariableop_dense1_kernel:	-
assignvariableop_1_dense1_bias:	.
assignvariableop_2_batch1_gamma:	-
assignvariableop_3_batch1_beta:	4
%assignvariableop_4_batch1_moving_mean:	8
)assignvariableop_5_batch1_moving_variance:	4
 assignvariableop_6_dense2_kernel:
-
assignvariableop_7_dense2_bias:	.
assignvariableop_8_batch2_gamma:	-
assignvariableop_9_batch2_beta:	5
&assignvariableop_10_batch2_moving_mean:	9
*assignvariableop_11_batch2_moving_variance:	5
!assignvariableop_12_dense3_kernel:
.
assignvariableop_13_dense3_bias:	/
 assignvariableop_14_batch3_gamma:	.
assignvariableop_15_batch3_beta:	5
&assignvariableop_16_batch3_moving_mean:	9
*assignvariableop_17_batch3_moving_variance:	5
!assignvariableop_18_dense4_kernel:
.
assignvariableop_19_dense4_bias:	/
 assignvariableop_20_batch4_gamma:	.
assignvariableop_21_batch4_beta:	5
&assignvariableop_22_batch4_moving_mean:	9
*assignvariableop_23_batch4_moving_variance:	8
%assignvariableop_24_policy_net_kernel:	1
#assignvariableop_25_policy_net_bias:7
$assignvariableop_26_value_net_kernel:	0
"assignvariableop_27_value_net_bias:'
assignvariableop_28_adam_iter:	 )
assignvariableop_29_adam_beta_1: )
assignvariableop_30_adam_beta_2: (
assignvariableop_31_adam_decay: 0
&assignvariableop_32_adam_learning_rate: #
assignvariableop_33_total: #
assignvariableop_34_count: %
assignvariableop_35_total_1: %
assignvariableop_36_count_1: %
assignvariableop_37_total_2: %
assignvariableop_38_count_2: ;
(assignvariableop_39_adam_dense1_kernel_m:	5
&assignvariableop_40_adam_dense1_bias_m:	6
'assignvariableop_41_adam_batch1_gamma_m:	5
&assignvariableop_42_adam_batch1_beta_m:	<
(assignvariableop_43_adam_dense2_kernel_m:
5
&assignvariableop_44_adam_dense2_bias_m:	6
'assignvariableop_45_adam_batch2_gamma_m:	5
&assignvariableop_46_adam_batch2_beta_m:	<
(assignvariableop_47_adam_dense3_kernel_m:
5
&assignvariableop_48_adam_dense3_bias_m:	6
'assignvariableop_49_adam_batch3_gamma_m:	5
&assignvariableop_50_adam_batch3_beta_m:	<
(assignvariableop_51_adam_dense4_kernel_m:
5
&assignvariableop_52_adam_dense4_bias_m:	6
'assignvariableop_53_adam_batch4_gamma_m:	5
&assignvariableop_54_adam_batch4_beta_m:	?
,assignvariableop_55_adam_policy_net_kernel_m:	8
*assignvariableop_56_adam_policy_net_bias_m:>
+assignvariableop_57_adam_value_net_kernel_m:	7
)assignvariableop_58_adam_value_net_bias_m:;
(assignvariableop_59_adam_dense1_kernel_v:	5
&assignvariableop_60_adam_dense1_bias_v:	6
'assignvariableop_61_adam_batch1_gamma_v:	5
&assignvariableop_62_adam_batch1_beta_v:	<
(assignvariableop_63_adam_dense2_kernel_v:
5
&assignvariableop_64_adam_dense2_bias_v:	6
'assignvariableop_65_adam_batch2_gamma_v:	5
&assignvariableop_66_adam_batch2_beta_v:	<
(assignvariableop_67_adam_dense3_kernel_v:
5
&assignvariableop_68_adam_dense3_bias_v:	6
'assignvariableop_69_adam_batch3_gamma_v:	5
&assignvariableop_70_adam_batch3_beta_v:	<
(assignvariableop_71_adam_dense4_kernel_v:
5
&assignvariableop_72_adam_dense4_bias_v:	6
'assignvariableop_73_adam_batch4_gamma_v:	5
&assignvariableop_74_adam_batch4_beta_v:	?
,assignvariableop_75_adam_policy_net_kernel_v:	8
*assignvariableop_76_adam_policy_net_bias_v:>
+assignvariableop_77_adam_value_net_kernel_v:	7
)assignvariableop_78_adam_value_net_bias_v:
identity_80¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_57¢AssignVariableOp_58¢AssignVariableOp_59¢AssignVariableOp_6¢AssignVariableOp_60¢AssignVariableOp_61¢AssignVariableOp_62¢AssignVariableOp_63¢AssignVariableOp_64¢AssignVariableOp_65¢AssignVariableOp_66¢AssignVariableOp_67¢AssignVariableOp_68¢AssignVariableOp_69¢AssignVariableOp_7¢AssignVariableOp_70¢AssignVariableOp_71¢AssignVariableOp_72¢AssignVariableOp_73¢AssignVariableOp_74¢AssignVariableOp_75¢AssignVariableOp_76¢AssignVariableOp_77¢AssignVariableOp_78¢AssignVariableOp_8¢AssignVariableOp_9,
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:P*
dtype0*+
value+Bÿ*PB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names±
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:P*
dtype0*µ
value«B¨PB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices¾
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ö
_output_shapesÃ
À::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*^
dtypesT
R2P	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOpassignvariableop_dense1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1£
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¤
AssignVariableOp_2AssignVariableOpassignvariableop_2_batch1_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3£
AssignVariableOp_3AssignVariableOpassignvariableop_3_batch1_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4ª
AssignVariableOp_4AssignVariableOp%assignvariableop_4_batch1_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5®
AssignVariableOp_5AssignVariableOp)assignvariableop_5_batch1_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6¥
AssignVariableOp_6AssignVariableOp assignvariableop_6_dense2_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7£
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense2_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8¤
AssignVariableOp_8AssignVariableOpassignvariableop_8_batch2_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9£
AssignVariableOp_9AssignVariableOpassignvariableop_9_batch2_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10®
AssignVariableOp_10AssignVariableOp&assignvariableop_10_batch2_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11²
AssignVariableOp_11AssignVariableOp*assignvariableop_11_batch2_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12©
AssignVariableOp_12AssignVariableOp!assignvariableop_12_dense3_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13§
AssignVariableOp_13AssignVariableOpassignvariableop_13_dense3_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14¨
AssignVariableOp_14AssignVariableOp assignvariableop_14_batch3_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15§
AssignVariableOp_15AssignVariableOpassignvariableop_15_batch3_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16®
AssignVariableOp_16AssignVariableOp&assignvariableop_16_batch3_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17²
AssignVariableOp_17AssignVariableOp*assignvariableop_17_batch3_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18©
AssignVariableOp_18AssignVariableOp!assignvariableop_18_dense4_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19§
AssignVariableOp_19AssignVariableOpassignvariableop_19_dense4_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20¨
AssignVariableOp_20AssignVariableOp assignvariableop_20_batch4_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21§
AssignVariableOp_21AssignVariableOpassignvariableop_21_batch4_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22®
AssignVariableOp_22AssignVariableOp&assignvariableop_22_batch4_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23²
AssignVariableOp_23AssignVariableOp*assignvariableop_23_batch4_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24­
AssignVariableOp_24AssignVariableOp%assignvariableop_24_policy_net_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25«
AssignVariableOp_25AssignVariableOp#assignvariableop_25_policy_net_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26¬
AssignVariableOp_26AssignVariableOp$assignvariableop_26_value_net_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27ª
AssignVariableOp_27AssignVariableOp"assignvariableop_27_value_net_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_28¥
AssignVariableOp_28AssignVariableOpassignvariableop_28_adam_iterIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29§
AssignVariableOp_29AssignVariableOpassignvariableop_29_adam_beta_1Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30§
AssignVariableOp_30AssignVariableOpassignvariableop_30_adam_beta_2Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31¦
AssignVariableOp_31AssignVariableOpassignvariableop_31_adam_decayIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32®
AssignVariableOp_32AssignVariableOp&assignvariableop_32_adam_learning_rateIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33¡
AssignVariableOp_33AssignVariableOpassignvariableop_33_totalIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34¡
AssignVariableOp_34AssignVariableOpassignvariableop_34_countIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35£
AssignVariableOp_35AssignVariableOpassignvariableop_35_total_1Identity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36£
AssignVariableOp_36AssignVariableOpassignvariableop_36_count_1Identity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37£
AssignVariableOp_37AssignVariableOpassignvariableop_37_total_2Identity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38£
AssignVariableOp_38AssignVariableOpassignvariableop_38_count_2Identity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39°
AssignVariableOp_39AssignVariableOp(assignvariableop_39_adam_dense1_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40®
AssignVariableOp_40AssignVariableOp&assignvariableop_40_adam_dense1_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41¯
AssignVariableOp_41AssignVariableOp'assignvariableop_41_adam_batch1_gamma_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42®
AssignVariableOp_42AssignVariableOp&assignvariableop_42_adam_batch1_beta_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43°
AssignVariableOp_43AssignVariableOp(assignvariableop_43_adam_dense2_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44®
AssignVariableOp_44AssignVariableOp&assignvariableop_44_adam_dense2_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45¯
AssignVariableOp_45AssignVariableOp'assignvariableop_45_adam_batch2_gamma_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46®
AssignVariableOp_46AssignVariableOp&assignvariableop_46_adam_batch2_beta_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47°
AssignVariableOp_47AssignVariableOp(assignvariableop_47_adam_dense3_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48®
AssignVariableOp_48AssignVariableOp&assignvariableop_48_adam_dense3_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49¯
AssignVariableOp_49AssignVariableOp'assignvariableop_49_adam_batch3_gamma_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50®
AssignVariableOp_50AssignVariableOp&assignvariableop_50_adam_batch3_beta_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51°
AssignVariableOp_51AssignVariableOp(assignvariableop_51_adam_dense4_kernel_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52®
AssignVariableOp_52AssignVariableOp&assignvariableop_52_adam_dense4_bias_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53¯
AssignVariableOp_53AssignVariableOp'assignvariableop_53_adam_batch4_gamma_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54®
AssignVariableOp_54AssignVariableOp&assignvariableop_54_adam_batch4_beta_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55´
AssignVariableOp_55AssignVariableOp,assignvariableop_55_adam_policy_net_kernel_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56²
AssignVariableOp_56AssignVariableOp*assignvariableop_56_adam_policy_net_bias_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57³
AssignVariableOp_57AssignVariableOp+assignvariableop_57_adam_value_net_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58±
AssignVariableOp_58AssignVariableOp)assignvariableop_58_adam_value_net_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59°
AssignVariableOp_59AssignVariableOp(assignvariableop_59_adam_dense1_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60®
AssignVariableOp_60AssignVariableOp&assignvariableop_60_adam_dense1_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61¯
AssignVariableOp_61AssignVariableOp'assignvariableop_61_adam_batch1_gamma_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62®
AssignVariableOp_62AssignVariableOp&assignvariableop_62_adam_batch1_beta_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63°
AssignVariableOp_63AssignVariableOp(assignvariableop_63_adam_dense2_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64®
AssignVariableOp_64AssignVariableOp&assignvariableop_64_adam_dense2_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65¯
AssignVariableOp_65AssignVariableOp'assignvariableop_65_adam_batch2_gamma_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66®
AssignVariableOp_66AssignVariableOp&assignvariableop_66_adam_batch2_beta_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67°
AssignVariableOp_67AssignVariableOp(assignvariableop_67_adam_dense3_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68®
AssignVariableOp_68AssignVariableOp&assignvariableop_68_adam_dense3_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69¯
AssignVariableOp_69AssignVariableOp'assignvariableop_69_adam_batch3_gamma_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70®
AssignVariableOp_70AssignVariableOp&assignvariableop_70_adam_batch3_beta_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71°
AssignVariableOp_71AssignVariableOp(assignvariableop_71_adam_dense4_kernel_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72®
AssignVariableOp_72AssignVariableOp&assignvariableop_72_adam_dense4_bias_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73¯
AssignVariableOp_73AssignVariableOp'assignvariableop_73_adam_batch4_gamma_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74®
AssignVariableOp_74AssignVariableOp&assignvariableop_74_adam_batch4_beta_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75´
AssignVariableOp_75AssignVariableOp,assignvariableop_75_adam_policy_net_kernel_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76²
AssignVariableOp_76AssignVariableOp*assignvariableop_76_adam_policy_net_bias_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77³
AssignVariableOp_77AssignVariableOp+assignvariableop_77_adam_value_net_kernel_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78±
AssignVariableOp_78AssignVariableOp)assignvariableop_78_adam_value_net_bias_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_789
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp¨
Identity_79Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_79
Identity_80IdentityIdentity_79:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_80"#
identity_80Identity_80:output:0*µ
_input_shapes£
 : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"ÌL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ô
serving_defaultà
C
	state_7_46
serving_default_state_7_4:0ÿÿÿÿÿÿÿÿÿ>

policy_net0
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿ=
	value_net0
StatefulPartitionedCall:1ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:Ã

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
layer-16
layer-17
layer_with_weights-8
layer-18
layer_with_weights-9
layer-19
	optimizer
loss
regularization_losses
	variables
trainable_variables
	keras_api

signatures
+¨&call_and_return_all_conditional_losses
©__call__
ª_default_save_signature"
_tf_keras_networkû{"name": "noConv7x4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "noConv7x4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 4]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "state_7_4"}, "name": "state_7_4", "inbound_nodes": []}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten", "inbound_nodes": [[["state_7_4", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense1", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense1", "inbound_nodes": [[["flatten", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch1", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch1", "inbound_nodes": [[["dense1", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "act1", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "act1", "inbound_nodes": [[["batch1", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "drop1", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "name": "drop1", "inbound_nodes": [[["act1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense2", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense2", "inbound_nodes": [[["drop1", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch2", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch2", "inbound_nodes": [[["dense2", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "act2", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "act2", "inbound_nodes": [[["batch2", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "drop2", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "name": "drop2", "inbound_nodes": [[["act2", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense3", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense3", "inbound_nodes": [[["drop2", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch3", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch3", "inbound_nodes": [[["dense3", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "act3", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "act3", "inbound_nodes": [[["batch3", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "drop3", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "name": "drop3", "inbound_nodes": [[["act3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense4", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense4", "inbound_nodes": [[["drop3", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch4", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch4", "inbound_nodes": [[["dense4", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "act4", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "act4", "inbound_nodes": [[["batch4", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "drop4", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "name": "drop4", "inbound_nodes": [[["act4", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "policy_net", "trainable": true, "dtype": "float32", "units": 28, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "policy_net", "inbound_nodes": [[["drop4", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "value_net", "trainable": true, "dtype": "float32", "units": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "value_net", "inbound_nodes": [[["drop4", 0, 0, {}]]]}], "input_layers": [["state_7_4", 0, 0]], "output_layers": [["policy_net", 0, 0], ["value_net", 0, 0]]}, "shared_object_id": 48, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 7, 4]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 4]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 7, 4]}, "float32", "state_7_4"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "noConv7x4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 4]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "state_7_4"}, "name": "state_7_4", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten", "inbound_nodes": [[["state_7_4", 0, 0, {}]]], "shared_object_id": 1}, {"class_name": "Dense", "config": {"name": "dense1", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense1", "inbound_nodes": [[["flatten", 0, 0, {}]]], "shared_object_id": 4}, {"class_name": "BatchNormalization", "config": {"name": "batch1", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 6}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 8}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch1", "inbound_nodes": [[["dense1", 0, 0, {}]]], "shared_object_id": 9}, {"class_name": "Activation", "config": {"name": "act1", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "act1", "inbound_nodes": [[["batch1", 0, 0, {}]]], "shared_object_id": 10}, {"class_name": "Dropout", "config": {"name": "drop1", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "name": "drop1", "inbound_nodes": [[["act1", 0, 0, {}]]], "shared_object_id": 11}, {"class_name": "Dense", "config": {"name": "dense2", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense2", "inbound_nodes": [[["drop1", 0, 0, {}]]], "shared_object_id": 14}, {"class_name": "BatchNormalization", "config": {"name": "batch2", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 16}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 18}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch2", "inbound_nodes": [[["dense2", 0, 0, {}]]], "shared_object_id": 19}, {"class_name": "Activation", "config": {"name": "act2", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "act2", "inbound_nodes": [[["batch2", 0, 0, {}]]], "shared_object_id": 20}, {"class_name": "Dropout", "config": {"name": "drop2", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "name": "drop2", "inbound_nodes": [[["act2", 0, 0, {}]]], "shared_object_id": 21}, {"class_name": "Dense", "config": {"name": "dense3", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 22}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense3", "inbound_nodes": [[["drop2", 0, 0, {}]]], "shared_object_id": 24}, {"class_name": "BatchNormalization", "config": {"name": "batch3", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 26}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 28}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch3", "inbound_nodes": [[["dense3", 0, 0, {}]]], "shared_object_id": 29}, {"class_name": "Activation", "config": {"name": "act3", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "act3", "inbound_nodes": [[["batch3", 0, 0, {}]]], "shared_object_id": 30}, {"class_name": "Dropout", "config": {"name": "drop3", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "name": "drop3", "inbound_nodes": [[["act3", 0, 0, {}]]], "shared_object_id": 31}, {"class_name": "Dense", "config": {"name": "dense4", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 32}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 33}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense4", "inbound_nodes": [[["drop3", 0, 0, {}]]], "shared_object_id": 34}, {"class_name": "BatchNormalization", "config": {"name": "batch4", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 35}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 36}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 37}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 38}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch4", "inbound_nodes": [[["dense4", 0, 0, {}]]], "shared_object_id": 39}, {"class_name": "Activation", "config": {"name": "act4", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "act4", "inbound_nodes": [[["batch4", 0, 0, {}]]], "shared_object_id": 40}, {"class_name": "Dropout", "config": {"name": "drop4", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "name": "drop4", "inbound_nodes": [[["act4", 0, 0, {}]]], "shared_object_id": 41}, {"class_name": "Dense", "config": {"name": "policy_net", "trainable": true, "dtype": "float32", "units": 28, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 42}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 43}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "policy_net", "inbound_nodes": [[["drop4", 0, 0, {}]]], "shared_object_id": 44}, {"class_name": "Dense", "config": {"name": "value_net", "trainable": true, "dtype": "float32", "units": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 45}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 46}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "value_net", "inbound_nodes": [[["drop4", 0, 0, {}]]], "shared_object_id": 47}], "input_layers": [["state_7_4", 0, 0]], "output_layers": [["policy_net", 0, 0], ["value_net", 0, 0]]}}, "training_config": {"loss": ["categorical_crossentropy", "mean_squared_error"], "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
ó"ð
_tf_keras_input_layerÐ{"class_name": "InputLayer", "name": "state_7_4", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 4]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 4]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "state_7_4"}}
Á
regularization_losses
	variables
trainable_variables
	keras_api
«__call__
+¬&call_and_return_all_conditional_losses"°
_tf_keras_layer{"name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "inbound_nodes": [[["state_7_4", 0, 0, {}]]], "shared_object_id": 1, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 50}}
ý

 kernel
!bias
"regularization_losses
#	variables
$trainable_variables
%	keras_api
­__call__
+®&call_and_return_all_conditional_losses"Ö
_tf_keras_layer¼{"name": "dense1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense1", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["flatten", 0, 0, {}]]], "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 28}}, "shared_object_id": 51}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28]}}
Ð

&axis
	'gamma
(beta
)moving_mean
*moving_variance
+regularization_losses
,	variables
-trainable_variables
.	keras_api
¯__call__
+°&call_and_return_all_conditional_losses"ú
_tf_keras_layerà{"name": "batch1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch1", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 6}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 8}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["dense1", 0, 0, {}]]], "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 1024}}, "shared_object_id": 52}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}

/regularization_losses
0	variables
1trainable_variables
2	keras_api
±__call__
+²&call_and_return_all_conditional_losses"ù
_tf_keras_layerß{"name": "act1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "act1", "trainable": true, "dtype": "float32", "activation": "relu"}, "inbound_nodes": [[["batch1", 0, 0, {}]]], "shared_object_id": 10}
 
3regularization_losses
4	variables
5trainable_variables
6	keras_api
³__call__
+´&call_and_return_all_conditional_losses"
_tf_keras_layerõ{"name": "drop1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "drop1", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "inbound_nodes": [[["act1", 0, 0, {}]]], "shared_object_id": 11}
	

7kernel
8bias
9regularization_losses
:	variables
;trainable_variables
<	keras_api
µ__call__
+¶&call_and_return_all_conditional_losses"Û
_tf_keras_layerÁ{"name": "dense2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense2", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["drop1", 0, 0, {}]]], "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1024}}, "shared_object_id": 53}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}
Õ

=axis
	>gamma
?beta
@moving_mean
Amoving_variance
Bregularization_losses
C	variables
Dtrainable_variables
E	keras_api
·__call__
+¸&call_and_return_all_conditional_losses"ÿ
_tf_keras_layerå{"name": "batch2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch2", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 16}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 18}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["dense2", 0, 0, {}]]], "shared_object_id": 19, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 1024}}, "shared_object_id": 54}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}

Fregularization_losses
G	variables
Htrainable_variables
I	keras_api
¹__call__
+º&call_and_return_all_conditional_losses"ù
_tf_keras_layerß{"name": "act2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "act2", "trainable": true, "dtype": "float32", "activation": "relu"}, "inbound_nodes": [[["batch2", 0, 0, {}]]], "shared_object_id": 20}
 
Jregularization_losses
K	variables
Ltrainable_variables
M	keras_api
»__call__
+¼&call_and_return_all_conditional_losses"
_tf_keras_layerõ{"name": "drop2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "drop2", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "inbound_nodes": [[["act2", 0, 0, {}]]], "shared_object_id": 21}
	

Nkernel
Obias
Pregularization_losses
Q	variables
Rtrainable_variables
S	keras_api
½__call__
+¾&call_and_return_all_conditional_losses"Û
_tf_keras_layerÁ{"name": "dense3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense3", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 22}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["drop2", 0, 0, {}]]], "shared_object_id": 24, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1024}}, "shared_object_id": 55}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}
Õ

Taxis
	Ugamma
Vbeta
Wmoving_mean
Xmoving_variance
Yregularization_losses
Z	variables
[trainable_variables
\	keras_api
¿__call__
+À&call_and_return_all_conditional_losses"ÿ
_tf_keras_layerå{"name": "batch3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch3", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 26}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 28}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["dense3", 0, 0, {}]]], "shared_object_id": 29, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 1024}}, "shared_object_id": 56}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}

]regularization_losses
^	variables
_trainable_variables
`	keras_api
Á__call__
+Â&call_and_return_all_conditional_losses"ù
_tf_keras_layerß{"name": "act3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "act3", "trainable": true, "dtype": "float32", "activation": "relu"}, "inbound_nodes": [[["batch3", 0, 0, {}]]], "shared_object_id": 30}
 
aregularization_losses
b	variables
ctrainable_variables
d	keras_api
Ã__call__
+Ä&call_and_return_all_conditional_losses"
_tf_keras_layerõ{"name": "drop3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "drop3", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "inbound_nodes": [[["act3", 0, 0, {}]]], "shared_object_id": 31}
	

ekernel
fbias
gregularization_losses
h	variables
itrainable_variables
j	keras_api
Å__call__
+Æ&call_and_return_all_conditional_losses"Ú
_tf_keras_layerÀ{"name": "dense4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense4", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 32}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 33}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["drop3", 0, 0, {}]]], "shared_object_id": 34, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1024}}, "shared_object_id": 57}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}
Ó

kaxis
	lgamma
mbeta
nmoving_mean
omoving_variance
pregularization_losses
q	variables
rtrainable_variables
s	keras_api
Ç__call__
+È&call_and_return_all_conditional_losses"ý
_tf_keras_layerã{"name": "batch4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch4", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 35}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 36}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 37}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 38}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["dense4", 0, 0, {}]]], "shared_object_id": 39, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 512}}, "shared_object_id": 58}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}

tregularization_losses
u	variables
vtrainable_variables
w	keras_api
É__call__
+Ê&call_and_return_all_conditional_losses"ù
_tf_keras_layerß{"name": "act4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "act4", "trainable": true, "dtype": "float32", "activation": "relu"}, "inbound_nodes": [[["batch4", 0, 0, {}]]], "shared_object_id": 40}
 
xregularization_losses
y	variables
ztrainable_variables
{	keras_api
Ë__call__
+Ì&call_and_return_all_conditional_losses"
_tf_keras_layerõ{"name": "drop4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "drop4", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "inbound_nodes": [[["act4", 0, 0, {}]]], "shared_object_id": 41}
	

|kernel
}bias
~regularization_losses
	variables
trainable_variables
	keras_api
Í__call__
+Î&call_and_return_all_conditional_losses"à
_tf_keras_layerÆ{"name": "policy_net", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "policy_net", "trainable": true, "dtype": "float32", "units": 28, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 42}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 43}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["drop4", 0, 0, {}]]], "shared_object_id": 44, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}, "shared_object_id": 59}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}
	
kernel
	bias
regularization_losses
	variables
trainable_variables
	keras_api
Ï__call__
+Ð&call_and_return_all_conditional_losses"Ú
_tf_keras_layerÀ{"name": "value_net", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "value_net", "trainable": true, "dtype": "float32", "units": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 45}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 46}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["drop4", 0, 0, {}]]], "shared_object_id": 47, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}, "shared_object_id": 60}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}
ì
	iter
beta_1
beta_2

decay
learning_rate m!m'm(m7m8m>m?mNmOmUmVmemfmlmmm|m}m	m	m v!v'v(v7v8v>v?vNvOvUvVvev fv¡lv¢mv£|v¤}v¥	v¦	v§"
	optimizer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ø
 0
!1
'2
(3
)4
*5
76
87
>8
?9
@10
A11
N12
O13
U14
V15
W16
X17
e18
f19
l20
m21
n22
o23
|24
}25
26
27"
trackable_list_wrapper
¸
 0
!1
'2
(3
74
85
>6
?7
N8
O9
U10
V11
e12
f13
l14
m15
|16
}17
18
19"
trackable_list_wrapper
Ó
metrics
non_trainable_variables
layer_metrics
regularization_losses
	variables
 layer_regularization_losses
layers
trainable_variables
©__call__
ª_default_save_signature
+¨&call_and_return_all_conditional_losses
'¨"call_and_return_conditional_losses"
_generic_user_object
-
Ñserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
metrics
non_trainable_variables
layer_metrics
regularization_losses
	variables
 layer_regularization_losses
layers
trainable_variables
«__call__
+¬&call_and_return_all_conditional_losses
'¬"call_and_return_conditional_losses"
_generic_user_object
 :	2dense1/kernel
:2dense1/bias
 "
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
µ
metrics
non_trainable_variables
layer_metrics
"regularization_losses
#	variables
 layer_regularization_losses
layers
$trainable_variables
­__call__
+®&call_and_return_all_conditional_losses
'®"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:2batch1/gamma
:2batch1/beta
#:! (2batch1/moving_mean
':% (2batch1/moving_variance
 "
trackable_list_wrapper
<
'0
(1
)2
*3"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
µ
metrics
non_trainable_variables
layer_metrics
+regularization_losses
,	variables
 layer_regularization_losses
 layers
-trainable_variables
¯__call__
+°&call_and_return_all_conditional_losses
'°"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
¡metrics
¢non_trainable_variables
£layer_metrics
/regularization_losses
0	variables
 ¤layer_regularization_losses
¥layers
1trainable_variables
±__call__
+²&call_and_return_all_conditional_losses
'²"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
¦metrics
§non_trainable_variables
¨layer_metrics
3regularization_losses
4	variables
 ©layer_regularization_losses
ªlayers
5trainable_variables
³__call__
+´&call_and_return_all_conditional_losses
'´"call_and_return_conditional_losses"
_generic_user_object
!:
2dense2/kernel
:2dense2/bias
 "
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
µ
«metrics
¬non_trainable_variables
­layer_metrics
9regularization_losses
:	variables
 ®layer_regularization_losses
¯layers
;trainable_variables
µ__call__
+¶&call_and_return_all_conditional_losses
'¶"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:2batch2/gamma
:2batch2/beta
#:! (2batch2/moving_mean
':% (2batch2/moving_variance
 "
trackable_list_wrapper
<
>0
?1
@2
A3"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
µ
°metrics
±non_trainable_variables
²layer_metrics
Bregularization_losses
C	variables
 ³layer_regularization_losses
´layers
Dtrainable_variables
·__call__
+¸&call_and_return_all_conditional_losses
'¸"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
µmetrics
¶non_trainable_variables
·layer_metrics
Fregularization_losses
G	variables
 ¸layer_regularization_losses
¹layers
Htrainable_variables
¹__call__
+º&call_and_return_all_conditional_losses
'º"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
ºmetrics
»non_trainable_variables
¼layer_metrics
Jregularization_losses
K	variables
 ½layer_regularization_losses
¾layers
Ltrainable_variables
»__call__
+¼&call_and_return_all_conditional_losses
'¼"call_and_return_conditional_losses"
_generic_user_object
!:
2dense3/kernel
:2dense3/bias
 "
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
µ
¿metrics
Ànon_trainable_variables
Álayer_metrics
Pregularization_losses
Q	variables
 Âlayer_regularization_losses
Ãlayers
Rtrainable_variables
½__call__
+¾&call_and_return_all_conditional_losses
'¾"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:2batch3/gamma
:2batch3/beta
#:! (2batch3/moving_mean
':% (2batch3/moving_variance
 "
trackable_list_wrapper
<
U0
V1
W2
X3"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
µ
Ämetrics
Ånon_trainable_variables
Ælayer_metrics
Yregularization_losses
Z	variables
 Çlayer_regularization_losses
Èlayers
[trainable_variables
¿__call__
+À&call_and_return_all_conditional_losses
'À"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Émetrics
Ênon_trainable_variables
Ëlayer_metrics
]regularization_losses
^	variables
 Ìlayer_regularization_losses
Ílayers
_trainable_variables
Á__call__
+Â&call_and_return_all_conditional_losses
'Â"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Îmetrics
Ïnon_trainable_variables
Ðlayer_metrics
aregularization_losses
b	variables
 Ñlayer_regularization_losses
Òlayers
ctrainable_variables
Ã__call__
+Ä&call_and_return_all_conditional_losses
'Ä"call_and_return_conditional_losses"
_generic_user_object
!:
2dense4/kernel
:2dense4/bias
 "
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
µ
Ómetrics
Ônon_trainable_variables
Õlayer_metrics
gregularization_losses
h	variables
 Ölayer_regularization_losses
×layers
itrainable_variables
Å__call__
+Æ&call_and_return_all_conditional_losses
'Æ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:2batch4/gamma
:2batch4/beta
#:! (2batch4/moving_mean
':% (2batch4/moving_variance
 "
trackable_list_wrapper
<
l0
m1
n2
o3"
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
µ
Ømetrics
Ùnon_trainable_variables
Úlayer_metrics
pregularization_losses
q	variables
 Ûlayer_regularization_losses
Ülayers
rtrainable_variables
Ç__call__
+È&call_and_return_all_conditional_losses
'È"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Ýmetrics
Þnon_trainable_variables
ßlayer_metrics
tregularization_losses
u	variables
 àlayer_regularization_losses
álayers
vtrainable_variables
É__call__
+Ê&call_and_return_all_conditional_losses
'Ê"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
âmetrics
ãnon_trainable_variables
älayer_metrics
xregularization_losses
y	variables
 ålayer_regularization_losses
ælayers
ztrainable_variables
Ë__call__
+Ì&call_and_return_all_conditional_losses
'Ì"call_and_return_conditional_losses"
_generic_user_object
$:"	2policy_net/kernel
:2policy_net/bias
 "
trackable_list_wrapper
.
|0
}1"
trackable_list_wrapper
.
|0
}1"
trackable_list_wrapper
¶
çmetrics
ènon_trainable_variables
élayer_metrics
~regularization_losses
	variables
 êlayer_regularization_losses
ëlayers
trainable_variables
Í__call__
+Î&call_and_return_all_conditional_losses
'Î"call_and_return_conditional_losses"
_generic_user_object
#:!	2value_net/kernel
:2value_net/bias
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
¸
ìmetrics
ínon_trainable_variables
îlayer_metrics
regularization_losses
	variables
 ïlayer_regularization_losses
ðlayers
trainable_variables
Ï__call__
+Ð&call_and_return_all_conditional_losses
'Ð"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
8
ñ0
ò1
ó2"
trackable_list_wrapper
X
)0
*1
@2
A3
W4
X5
n6
o7"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
¶
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
16
17
18
19"
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
.
)0
*1"
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
.
@0
A1"
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
.
W0
X1"
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
.
n0
o1"
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
 "
trackable_list_wrapper
Ø

ôtotal

õcount
ö	variables
÷	keras_api"
_tf_keras_metric{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 61}
î

øtotal

ùcount
ú	variables
û	keras_api"³
_tf_keras_metric{"class_name": "Mean", "name": "policy_net_loss", "dtype": "float32", "config": {"name": "policy_net_loss", "dtype": "float32"}, "shared_object_id": 62}
ì

ütotal

ýcount
þ	variables
ÿ	keras_api"±
_tf_keras_metric{"class_name": "Mean", "name": "value_net_loss", "dtype": "float32", "config": {"name": "value_net_loss", "dtype": "float32"}, "shared_object_id": 63}
:  (2total
:  (2count
0
ô0
õ1"
trackable_list_wrapper
.
ö	variables"
_generic_user_object
:  (2total
:  (2count
0
ø0
ù1"
trackable_list_wrapper
.
ú	variables"
_generic_user_object
:  (2total
:  (2count
0
ü0
ý1"
trackable_list_wrapper
.
þ	variables"
_generic_user_object
%:#	2Adam/dense1/kernel/m
:2Adam/dense1/bias/m
 :2Adam/batch1/gamma/m
:2Adam/batch1/beta/m
&:$
2Adam/dense2/kernel/m
:2Adam/dense2/bias/m
 :2Adam/batch2/gamma/m
:2Adam/batch2/beta/m
&:$
2Adam/dense3/kernel/m
:2Adam/dense3/bias/m
 :2Adam/batch3/gamma/m
:2Adam/batch3/beta/m
&:$
2Adam/dense4/kernel/m
:2Adam/dense4/bias/m
 :2Adam/batch4/gamma/m
:2Adam/batch4/beta/m
):'	2Adam/policy_net/kernel/m
": 2Adam/policy_net/bias/m
(:&	2Adam/value_net/kernel/m
!:2Adam/value_net/bias/m
%:#	2Adam/dense1/kernel/v
:2Adam/dense1/bias/v
 :2Adam/batch1/gamma/v
:2Adam/batch1/beta/v
&:$
2Adam/dense2/kernel/v
:2Adam/dense2/bias/v
 :2Adam/batch2/gamma/v
:2Adam/batch2/beta/v
&:$
2Adam/dense3/kernel/v
:2Adam/dense3/bias/v
 :2Adam/batch3/gamma/v
:2Adam/batch3/beta/v
&:$
2Adam/dense4/kernel/v
:2Adam/dense4/bias/v
 :2Adam/batch4/gamma/v
:2Adam/batch4/beta/v
):'	2Adam/policy_net/kernel/v
": 2Adam/policy_net/bias/v
(:&	2Adam/value_net/kernel/v
!:2Adam/value_net/bias/v
æ2ã
F__inference_noConv7x4_layer_call_and_return_conditional_losses_1810617
F__inference_noConv7x4_layer_call_and_return_conditional_losses_1810818
F__inference_noConv7x4_layer_call_and_return_conditional_losses_1810349
F__inference_noConv7x4_layer_call_and_return_conditional_losses_1810429À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ú2÷
+__inference_noConv7x4_layer_call_fn_1809818
+__inference_noConv7x4_layer_call_fn_1810881
+__inference_noConv7x4_layer_call_fn_1810944
+__inference_noConv7x4_layer_call_fn_1810269À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
æ2ã
"__inference__wrapped_model_1808902¼
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *,¢)
'$
	state_7_4ÿÿÿÿÿÿÿÿÿ
Ó2Ð
)__inference_flatten_layer_call_fn_1810949¢
²
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
annotationsª *
 
î2ë
D__inference_flatten_layer_call_and_return_conditional_losses_1810955¢
²
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
annotationsª *
 
Ò2Ï
(__inference_dense1_layer_call_fn_1810964¢
²
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
annotationsª *
 
í2ê
C__inference_dense1_layer_call_and_return_conditional_losses_1810974¢
²
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
annotationsª *
 
2
(__inference_batch1_layer_call_fn_1810987
(__inference_batch1_layer_call_fn_1811000´
«²§
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

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ä2Á
C__inference_batch1_layer_call_and_return_conditional_losses_1811020
C__inference_batch1_layer_call_and_return_conditional_losses_1811054´
«²§
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

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ð2Í
&__inference_act1_layer_call_fn_1811059¢
²
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
annotationsª *
 
ë2è
A__inference_act1_layer_call_and_return_conditional_losses_1811064¢
²
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
annotationsª *
 
2
'__inference_drop1_layer_call_fn_1811069
'__inference_drop1_layer_call_fn_1811074´
«²§
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

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Â2¿
B__inference_drop1_layer_call_and_return_conditional_losses_1811079
B__inference_drop1_layer_call_and_return_conditional_losses_1811091´
«²§
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

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ò2Ï
(__inference_dense2_layer_call_fn_1811100¢
²
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
annotationsª *
 
í2ê
C__inference_dense2_layer_call_and_return_conditional_losses_1811110¢
²
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
annotationsª *
 
2
(__inference_batch2_layer_call_fn_1811123
(__inference_batch2_layer_call_fn_1811136´
«²§
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

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ä2Á
C__inference_batch2_layer_call_and_return_conditional_losses_1811156
C__inference_batch2_layer_call_and_return_conditional_losses_1811190´
«²§
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

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ð2Í
&__inference_act2_layer_call_fn_1811195¢
²
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
annotationsª *
 
ë2è
A__inference_act2_layer_call_and_return_conditional_losses_1811200¢
²
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
annotationsª *
 
2
'__inference_drop2_layer_call_fn_1811205
'__inference_drop2_layer_call_fn_1811210´
«²§
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

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Â2¿
B__inference_drop2_layer_call_and_return_conditional_losses_1811215
B__inference_drop2_layer_call_and_return_conditional_losses_1811227´
«²§
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

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ò2Ï
(__inference_dense3_layer_call_fn_1811236¢
²
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
annotationsª *
 
í2ê
C__inference_dense3_layer_call_and_return_conditional_losses_1811246¢
²
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
annotationsª *
 
2
(__inference_batch3_layer_call_fn_1811259
(__inference_batch3_layer_call_fn_1811272´
«²§
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

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ä2Á
C__inference_batch3_layer_call_and_return_conditional_losses_1811292
C__inference_batch3_layer_call_and_return_conditional_losses_1811326´
«²§
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

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ð2Í
&__inference_act3_layer_call_fn_1811331¢
²
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
annotationsª *
 
ë2è
A__inference_act3_layer_call_and_return_conditional_losses_1811336¢
²
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
annotationsª *
 
2
'__inference_drop3_layer_call_fn_1811341
'__inference_drop3_layer_call_fn_1811346´
«²§
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

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Â2¿
B__inference_drop3_layer_call_and_return_conditional_losses_1811351
B__inference_drop3_layer_call_and_return_conditional_losses_1811363´
«²§
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

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ò2Ï
(__inference_dense4_layer_call_fn_1811372¢
²
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
annotationsª *
 
í2ê
C__inference_dense4_layer_call_and_return_conditional_losses_1811382¢
²
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
annotationsª *
 
2
(__inference_batch4_layer_call_fn_1811395
(__inference_batch4_layer_call_fn_1811408´
«²§
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

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ä2Á
C__inference_batch4_layer_call_and_return_conditional_losses_1811428
C__inference_batch4_layer_call_and_return_conditional_losses_1811462´
«²§
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

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ð2Í
&__inference_act4_layer_call_fn_1811467¢
²
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
annotationsª *
 
ë2è
A__inference_act4_layer_call_and_return_conditional_losses_1811472¢
²
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
annotationsª *
 
2
'__inference_drop4_layer_call_fn_1811477
'__inference_drop4_layer_call_fn_1811482´
«²§
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

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Â2¿
B__inference_drop4_layer_call_and_return_conditional_losses_1811487
B__inference_drop4_layer_call_and_return_conditional_losses_1811499´
«²§
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

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ö2Ó
,__inference_policy_net_layer_call_fn_1811508¢
²
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
annotationsª *
 
ñ2î
G__inference_policy_net_layer_call_and_return_conditional_losses_1811519¢
²
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
annotationsª *
 
Õ2Ò
+__inference_value_net_layer_call_fn_1811528¢
²
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
annotationsª *
 
ð2í
F__inference_value_net_layer_call_and_return_conditional_losses_1811539¢
²
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
annotationsª *
 
ÎBË
%__inference_signature_wrapper_1810500	state_7_4"
²
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
annotationsª *
 ê
"__inference__wrapped_model_1808902Ã !*')(78A>@?NOXUWVefolnm|}6¢3
,¢)
'$
	state_7_4ÿÿÿÿÿÿÿÿÿ
ª "iªf
2

policy_net$!

policy_netÿÿÿÿÿÿÿÿÿ
0
	value_net# 
	value_netÿÿÿÿÿÿÿÿÿ
A__inference_act1_layer_call_and_return_conditional_losses_1811064Z0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 w
&__inference_act1_layer_call_fn_1811059M0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ
A__inference_act2_layer_call_and_return_conditional_losses_1811200Z0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 w
&__inference_act2_layer_call_fn_1811195M0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ
A__inference_act3_layer_call_and_return_conditional_losses_1811336Z0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 w
&__inference_act3_layer_call_fn_1811331M0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ
A__inference_act4_layer_call_and_return_conditional_losses_1811472Z0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 w
&__inference_act4_layer_call_fn_1811467M0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ«
C__inference_batch1_layer_call_and_return_conditional_losses_1811020d*')(4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 «
C__inference_batch1_layer_call_and_return_conditional_losses_1811054d)*'(4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
(__inference_batch1_layer_call_fn_1810987W*')(4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_batch1_layer_call_fn_1811000W)*'(4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ«
C__inference_batch2_layer_call_and_return_conditional_losses_1811156dA>@?4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 «
C__inference_batch2_layer_call_and_return_conditional_losses_1811190d@A>?4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
(__inference_batch2_layer_call_fn_1811123WA>@?4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_batch2_layer_call_fn_1811136W@A>?4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ«
C__inference_batch3_layer_call_and_return_conditional_losses_1811292dXUWV4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 «
C__inference_batch3_layer_call_and_return_conditional_losses_1811326dWXUV4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
(__inference_batch3_layer_call_fn_1811259WXUWV4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_batch3_layer_call_fn_1811272WWXUV4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ«
C__inference_batch4_layer_call_and_return_conditional_losses_1811428dolnm4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 «
C__inference_batch4_layer_call_and_return_conditional_losses_1811462dnolm4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
(__inference_batch4_layer_call_fn_1811395Wolnm4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_batch4_layer_call_fn_1811408Wnolm4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ¤
C__inference_dense1_layer_call_and_return_conditional_losses_1810974] !/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 |
(__inference_dense1_layer_call_fn_1810964P !/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¥
C__inference_dense2_layer_call_and_return_conditional_losses_1811110^780¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 }
(__inference_dense2_layer_call_fn_1811100Q780¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¥
C__inference_dense3_layer_call_and_return_conditional_losses_1811246^NO0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 }
(__inference_dense3_layer_call_fn_1811236QNO0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¥
C__inference_dense4_layer_call_and_return_conditional_losses_1811382^ef0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 }
(__inference_dense4_layer_call_fn_1811372Qef0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¤
B__inference_drop1_layer_call_and_return_conditional_losses_1811079^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ¤
B__inference_drop1_layer_call_and_return_conditional_losses_1811091^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 |
'__inference_drop1_layer_call_fn_1811069Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ|
'__inference_drop1_layer_call_fn_1811074Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ¤
B__inference_drop2_layer_call_and_return_conditional_losses_1811215^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ¤
B__inference_drop2_layer_call_and_return_conditional_losses_1811227^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 |
'__inference_drop2_layer_call_fn_1811205Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ|
'__inference_drop2_layer_call_fn_1811210Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ¤
B__inference_drop3_layer_call_and_return_conditional_losses_1811351^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ¤
B__inference_drop3_layer_call_and_return_conditional_losses_1811363^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 |
'__inference_drop3_layer_call_fn_1811341Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ|
'__inference_drop3_layer_call_fn_1811346Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ¤
B__inference_drop4_layer_call_and_return_conditional_losses_1811487^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ¤
B__inference_drop4_layer_call_and_return_conditional_losses_1811499^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 |
'__inference_drop4_layer_call_fn_1811477Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ|
'__inference_drop4_layer_call_fn_1811482Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ¤
D__inference_flatten_layer_call_and_return_conditional_losses_1810955\3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
)__inference_flatten_layer_call_fn_1810949O3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿø
F__inference_noConv7x4_layer_call_and_return_conditional_losses_1810349­ !*')(78A>@?NOXUWVefolnm|}>¢;
4¢1
'$
	state_7_4ÿÿÿÿÿÿÿÿÿ
p 

 
ª "K¢H
A>

0/0ÿÿÿÿÿÿÿÿÿ

0/1ÿÿÿÿÿÿÿÿÿ
 ø
F__inference_noConv7x4_layer_call_and_return_conditional_losses_1810429­ !)*'(78@A>?NOWXUVefnolm|}>¢;
4¢1
'$
	state_7_4ÿÿÿÿÿÿÿÿÿ
p

 
ª "K¢H
A>

0/0ÿÿÿÿÿÿÿÿÿ

0/1ÿÿÿÿÿÿÿÿÿ
 õ
F__inference_noConv7x4_layer_call_and_return_conditional_losses_1810617ª !*')(78A>@?NOXUWVefolnm|};¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "K¢H
A>

0/0ÿÿÿÿÿÿÿÿÿ

0/1ÿÿÿÿÿÿÿÿÿ
 õ
F__inference_noConv7x4_layer_call_and_return_conditional_losses_1810818ª !)*'(78@A>?NOWXUVefnolm|};¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "K¢H
A>

0/0ÿÿÿÿÿÿÿÿÿ

0/1ÿÿÿÿÿÿÿÿÿ
 Ï
+__inference_noConv7x4_layer_call_fn_1809818 !*')(78A>@?NOXUWVefolnm|}>¢;
4¢1
'$
	state_7_4ÿÿÿÿÿÿÿÿÿ
p 

 
ª "=:

0ÿÿÿÿÿÿÿÿÿ

1ÿÿÿÿÿÿÿÿÿÏ
+__inference_noConv7x4_layer_call_fn_1810269 !)*'(78@A>?NOWXUVefnolm|}>¢;
4¢1
'$
	state_7_4ÿÿÿÿÿÿÿÿÿ
p

 
ª "=:

0ÿÿÿÿÿÿÿÿÿ

1ÿÿÿÿÿÿÿÿÿÌ
+__inference_noConv7x4_layer_call_fn_1810881 !*')(78A>@?NOXUWVefolnm|};¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "=:

0ÿÿÿÿÿÿÿÿÿ

1ÿÿÿÿÿÿÿÿÿÌ
+__inference_noConv7x4_layer_call_fn_1810944 !)*'(78@A>?NOWXUVefnolm|};¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "=:

0ÿÿÿÿÿÿÿÿÿ

1ÿÿÿÿÿÿÿÿÿ¨
G__inference_policy_net_layer_call_and_return_conditional_losses_1811519]|}0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_policy_net_layer_call_fn_1811508P|}0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿú
%__inference_signature_wrapper_1810500Ð !*')(78A>@?NOXUWVefolnm|}C¢@
¢ 
9ª6
4
	state_7_4'$
	state_7_4ÿÿÿÿÿÿÿÿÿ"iªf
2

policy_net$!

policy_netÿÿÿÿÿÿÿÿÿ
0
	value_net# 
	value_netÿÿÿÿÿÿÿÿÿ©
F__inference_value_net_layer_call_and_return_conditional_losses_1811539_0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_value_net_layer_call_fn_1811528R0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ