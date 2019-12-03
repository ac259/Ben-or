---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_157522172499042000 == 
0
----

\* CONSTANT definitions @modelParameterConstants:1N
const_157522172499043000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_157522172499044000 == 
<<1,1,1,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_157522172499045000 == 
3
----

\* PROPERTY definition @modelCorrectnessProperties:0
prop_157522172499046000 ==
<>(\A a \in Procs: decided[a]# -1 => decided[a] \in {0,1})
----
=============================================================================
\* Modification History
\* Created Sun Dec 01 12:35:24 EST 2019 by Ani
