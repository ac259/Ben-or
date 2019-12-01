---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575162513469224000 == 
3
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575162513469225000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_1575162513469226000 == 
<<0,0,0,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_1575162513469227000 == 
2
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575162513469228000 ==
(\A i,j \in Procs: decided[i] # -1 /\ decided[j] # -1 => decided[i] = decided[j])
----
=============================================================================
\* Modification History
\* Created Sat Nov 30 20:08:33 EST 2019 by pratik
