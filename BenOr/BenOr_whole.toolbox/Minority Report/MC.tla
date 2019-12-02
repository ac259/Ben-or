---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575237639835518000 == 
2
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575237639835519000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_1575237639835520000 == 
<<0,1,1,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_1575237639835521000 == 
2
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575237639835522000 ==
(\E j \in Procs: TRUE => (decided[j] = 1) \/ (decided[j] = -1))
----
=============================================================================
\* Modification History
\* Created Sun Dec 01 17:00:39 EST 2019 by pratik
