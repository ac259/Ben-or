---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575162046621179000 == 
0
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575162046621180000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_1575162046621181000 == 
<<1,1,1,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_1575162046621182000 == 
3
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575162046621183000 ==
(\A i,j \in Procs: decided[i] # -1 /\ decided[j] # -1 => decided[i] = decided[j])
----
\* INVARIANT definition @modelCorrectnessInvariants:1
inv_1575162046621184000 ==
(\A i,j \in Procs: decided[i] # -1 /\ decided[j] # -1 => decided[i] = 1 /\ decided[j] = 1)
----
=============================================================================
\* Modification History
\* Created Sat Nov 30 20:00:46 EST 2019 by pratik
