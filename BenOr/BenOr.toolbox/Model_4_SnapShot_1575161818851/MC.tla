---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575161786838148000 == 
1
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575161786838149000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_1575161786838150000 == 
<<0,0,1,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_1575161786838151000 == 
4
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575161786838152000 ==
(\A i,j \in Procs: r[i] = r[j] /\ decided[i] # -1 /\ decided[j] # -1=> decided[i] = decided[j])
----
=============================================================================
\* Modification History
\* Created Sat Nov 30 19:56:26 EST 2019 by pratik
