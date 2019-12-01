---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_157523160431292000 == 
0
----

\* CONSTANT definitions @modelParameterConstants:1N
const_157523160431293000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2MAXROUND
const_157523160431294000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:3INPUT
const_157523160431295000 == 
<<1,1,1,1>>
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_157523160431296000 ==
(\A i,j \in Procs: pc[i] = pc[j]=> decided[i] = -1 /\ decided[j] = -1)
----
=============================================================================
\* Modification History
\* Created Sun Dec 01 15:20:04 EST 2019 by pratik
