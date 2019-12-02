---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575234399709369000 == 
0
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575234399709370000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_1575234399709371000 == 
<<0,1,1,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_1575234399709372000 == 
3
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575234399709373000 ==
(\E j \in Procs: TRUE => (decided[j] = 1) \/ (decided[j] = -1))
----
=============================================================================
\* Modification History
\* Created Sun Dec 01 16:06:39 EST 2019 by pratik
