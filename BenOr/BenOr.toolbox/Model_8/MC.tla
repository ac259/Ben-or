---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575217986460109000 == 
0
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575217986460110000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_1575217986460111000 == 
<<1,1,1,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_1575217986460112000 == 
2
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575217986460113000 ==
Agreement == (\A i,j \in Procs: decided[i] # -1 /\ decided[j] # -1 => decided[i] = decided[j])
----
=============================================================================
\* Modification History
\* Created Sun Dec 01 11:33:06 EST 2019 by Ani
