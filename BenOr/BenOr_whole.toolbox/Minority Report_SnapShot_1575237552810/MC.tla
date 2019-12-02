---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575237535799498000 == 
2
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575237535799499000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_1575237535799500000 == 
<<0,1,1,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_1575237535799501000 == 
3
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575237535799502000 ==
(\E j \in Procs: TRUE => (decided[j] = 1) \/ (decided[j] = -1))
----
=============================================================================
\* Modification History
\* Created Sun Dec 01 16:58:55 EST 2019 by pratik
