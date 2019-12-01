---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575161981069168000 == 
0
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575161981069169000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_1575161981069170000 == 
<<1,1,1,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_1575161981069171000 == 
3
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575161981069172000 ==
(\A i,j \in Procs: decided[i] # -1 /\ decided[j] # -1 => decided[i] = decided[j])
----
=============================================================================
\* Modification History
\* Created Sat Nov 30 19:59:41 EST 2019 by pratik
