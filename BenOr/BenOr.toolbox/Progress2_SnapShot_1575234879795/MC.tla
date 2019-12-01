---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575234877776395000 == 
0
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575234877776396000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2MAXROUND
const_1575234877776397000 == 
2
----

\* CONSTANT definitions @modelParameterConstants:3INPUT
const_1575234877776398000 == 
<<0,0,1,1>>
----

\* PROPERTY definition @modelCorrectnessProperties:0
prop_1575234877776399000 ==
(\E j \in Procs: TRUE => <>(decided[j] # -1 ))
----
=============================================================================
\* Modification History
\* Created Sun Dec 01 16:14:37 EST 2019 by pratik
