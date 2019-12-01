---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575169766135172000 == 
0
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575169766135173000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2MAXROUND
const_1575169766135174000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:3INPUT
const_1575169766135175000 == 
<<1,1,1,1>>
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575169766135176000 ==
(\A i,j \in Procs:(decided[i] # -1) /\ (decided[j] # -1) /\ (decided[i] = decided[j]) => i=j)
----
=============================================================================
\* Modification History
\* Created Sat Nov 30 22:09:26 EST 2019 by pratik
