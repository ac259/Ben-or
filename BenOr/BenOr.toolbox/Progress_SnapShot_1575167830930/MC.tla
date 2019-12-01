---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575167824920538000 == 
0
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575167824920539000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2MAXROUND
const_1575167824920540000 == 
2
----

\* CONSTANT definitions @modelParameterConstants:3INPUT
const_1575167824920541000 == 
<<0,0,1,1>>
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575167824920542000 ==
(\A i,j \in Procs: decided[i] # -1 /\ decided[j] # -1 => decided[i] = decided[j])
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_1575167824920543000 ==
(\A i,j \in Procs: decided[i] # -1 /\ decided[j] # -1 => <>(decided[i] = decided[j]))
----
=============================================================================
\* Modification History
\* Created Sat Nov 30 21:37:04 EST 2019 by pratik
