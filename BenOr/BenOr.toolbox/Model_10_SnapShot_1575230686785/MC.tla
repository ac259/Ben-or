---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_157523068058027000 == 
0
----

\* CONSTANT definitions @modelParameterConstants:1N
const_157523068058028000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2MAXROUND
const_157523068058029000 == 
2
----

\* CONSTANT definitions @modelParameterConstants:3INPUT
const_157523068058030000 == 
<<1,1,1,1>>
----

\* PROPERTY definition @modelCorrectnessProperties:0
prop_157523068058031000 ==
<>(\A a \in Procs: decided[a]# -1 => decided[a] \in {0,1})
----
=============================================================================
\* Modification History
\* Created Sun Dec 01 15:04:40 EST 2019 by Ani
