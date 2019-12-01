---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575232811463225000 == 
1
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575232811463226000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2MAXROUND
const_1575232811463227000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:3INPUT
const_1575232811463228000 == 
<<0,0,0,1>>
----

\* PROPERTY definition @modelCorrectnessProperties:0
prop_1575232811463229000 ==
(\E j \in Procs: TRUE => <>(decided[j] # -1 ))
----
=============================================================================
\* Modification History
\* Created Sun Dec 01 15:40:11 EST 2019 by pratik
