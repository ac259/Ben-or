---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575164991677289000 == 
0
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575164991677290000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_1575164991677291000 == 
<<0,1,1,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_1575164991677292000 == 
3
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575164991677293000 ==
(\A i,j \in Procs: decided[i] # -1 /\ decided[j] # -1 /\ decided[i] # 0 /\ decided[j] # 0 =>  /\ ( decided[i] = decided[j]))
----
=============================================================================
\* Modification History
\* Created Sat Nov 30 20:49:51 EST 2019 by pratik
