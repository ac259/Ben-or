---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575167107797426000 == 
3
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575167107797427000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2MAXROUND
const_1575167107797428000 == 
2
----

\* CONSTANT definitions @modelParameterConstants:3INPUT
const_1575167107797429000 == 
<<0,0,1,1>>
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575167107797430000 ==
(\A i,j \in Procs: decided[i] # -1 /\ decided[j] # -1 => decided[i] = decided[j])
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_1575167107797431000 ==
(\A i,j \in Procs: r[MAXROUND] => <> (decided[i] = decided[j] ))
----
=============================================================================
\* Modification History
\* Created Sat Nov 30 21:25:07 EST 2019 by pratik
