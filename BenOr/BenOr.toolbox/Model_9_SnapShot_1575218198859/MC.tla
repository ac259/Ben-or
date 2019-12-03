---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_15752181909647000 == 
0
----

\* CONSTANT definitions @modelParameterConstants:1N
const_15752181909648000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_15752181909649000 == 
<<1,1,1,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_157521819096410000 == 
3
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_157521819096411000 ==
(\A i,j \in Procs: decided[i] # -1 /\ decided[j] # -1 => decided[i] = decided[j])
----
=============================================================================
\* Modification History
\* Created Sun Dec 01 11:36:30 EST 2019 by Ani
