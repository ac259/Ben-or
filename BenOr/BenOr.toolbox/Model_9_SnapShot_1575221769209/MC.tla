---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_157522175805352000 == 
0
----

\* CONSTANT definitions @modelParameterConstants:1N
const_157522175805353000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_157522175805354000 == 
<<0,0,1,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_157522175805355000 == 
3
----

\* PROPERTY definition @modelCorrectnessProperties:0
prop_157522175805356000 ==
<>(\A a \in Procs: decided[a]# -1 => decided[a] \in {0,1})
----
=============================================================================
\* Modification History
\* Created Sun Dec 01 12:35:58 EST 2019 by Ani
