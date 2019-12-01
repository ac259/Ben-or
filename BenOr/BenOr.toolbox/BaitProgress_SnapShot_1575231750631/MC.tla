---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575231748619116000 == 
1
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575231748619117000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2MAXROUND
const_1575231748619118000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:3INPUT
const_1575231748619119000 == 
<<0,1,1,1>>
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575231748619120000 ==
(\A i,j \in Procs: pc[i] = pc[j]=> decided[i] = -1 /\ decided[j] = -1)
----
=============================================================================
\* Modification History
\* Created Sun Dec 01 15:22:28 EST 2019 by pratik
