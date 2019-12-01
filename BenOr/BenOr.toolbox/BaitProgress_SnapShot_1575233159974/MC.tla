---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575233155956256000 == 
1
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575233155956257000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2MAXROUND
const_1575233155956258000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:3INPUT
const_1575233155956259000 == 
<<0,1,1,1>>
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575233155956260000 ==
(\E j \in Procs: TRUE => (decided[j] = -1 ))
----
=============================================================================
\* Modification History
\* Created Sun Dec 01 15:45:55 EST 2019 by pratik
