---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575234198148359000 == 
1
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575234198148360000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_1575234198148361000 == 
<<0,1,1,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_1575234198148362000 == 
3
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575234198148363000 ==
(\E j \in Procs: TRUE => (decided[j] = 1) \/ (decided[j] = -1))
----
=============================================================================
\* Modification History
\* Created Sun Dec 01 16:03:18 EST 2019 by pratik
