---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575165053332309000 == 
3
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575165053332310000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_1575165053332311000 == 
<<0,1,1,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_1575165053332312000 == 
3
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575165053332313000 ==
(\A i,j \in Procs: decided[i] # -1 /\ decided[j] # -1 /\ decided[i] # 0 /\ decided[j] # 0 =>  /\ ( decided[i] = decided[j]))
----
=============================================================================
\* Modification History
\* Created Sat Nov 30 20:50:53 EST 2019 by pratik
