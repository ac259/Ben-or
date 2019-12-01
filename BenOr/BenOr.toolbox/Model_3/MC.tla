---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575167716002521000 == 
0
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575167716002522000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_1575167716002523000 == 
<<0,0,1,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_1575167716002524000 == 
3
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575167716002525000 ==
(\A i,j \in Procs: decided[i] # -1 /\ decided[j] # -1 => decided[i] = decided[j])
----
=============================================================================
\* Modification History
\* Created Sat Nov 30 21:35:16 EST 2019 by pratik
