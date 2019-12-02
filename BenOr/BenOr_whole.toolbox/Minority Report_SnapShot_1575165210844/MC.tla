---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575165192833329000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575165192833330000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_1575165192833331000 == 
<<0,1,1,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_1575165192833332000 == 
3
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575165192833333000 ==
(\A i,j \in Procs: decided[i] # -1 /\ decided[j] # -1 /\ decided[i] # 0 /\ decided[j] # 0 => ( decided[i] = decided[j]))
----
=============================================================================
\* Modification History
\* Created Sat Nov 30 20:53:12 EST 2019 by pratik