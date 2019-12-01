---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575165166701319000 == 
1
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575165166701320000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_1575165166701321000 == 
<<0,1,1,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_1575165166701322000 == 
3
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575165166701323000 ==
(\A i,j \in Procs: decided[i] # -1 /\ decided[j] # -1 /\ decided[i] # 0 /\ decided[j] # 0 => ( decided[i] = decided[j]))
----
=============================================================================
\* Modification History
\* Created Sat Nov 30 20:52:46 EST 2019 by pratik
