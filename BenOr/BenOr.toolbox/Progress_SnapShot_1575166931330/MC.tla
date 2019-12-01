---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575166927321414000 == 
3
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575166927321415000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2MAXROUND
const_1575166927321416000 == 
2
----

\* CONSTANT definitions @modelParameterConstants:3INPUT
const_1575166927321417000 == 
<<0,0,1,1>>
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575166927321418000 ==
(\A i,j \in Procs: decided[i] # -1 /\ decided[j] # -1 => decided[i] = decided[j])
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_1575166927321419000 ==
(\A i \in Procs: decided[i] # -1 => <> (decided[i] \in {1,0}))
----
=============================================================================
\* Modification History
\* Created Sat Nov 30 21:22:07 EST 2019 by pratik
