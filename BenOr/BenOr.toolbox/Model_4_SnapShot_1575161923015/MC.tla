---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575161892002158000 == 
1
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575161892002159000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_1575161892002160000 == 
<<0,0,1,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_1575161892002161000 == 
4
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575161892002162000 ==
(\A i,j \in Procs: decided[i] # -1 /\ decided[j] # -1 => decided[i] = decided[j])
----
=============================================================================
\* Modification History
\* Created Sat Nov 30 19:58:12 EST 2019 by pratik
