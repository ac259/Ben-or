---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575162176528214000 == 
3
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575162176528215000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_1575162176528216000 == 
<<0,0,0,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_1575162176528217000 == 
4
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575162176528218000 ==
(\A i,j \in Procs: decided[i] # -1 /\ decided[j] # -1 => decided[i] = decided[j])
----
=============================================================================
\* Modification History
\* Created Sat Nov 30 20:02:56 EST 2019 by pratik
