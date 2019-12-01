---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575167181697438000 == 
1
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575167181697439000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2MAXROUND
const_1575167181697440000 == 
2
----

\* CONSTANT definitions @modelParameterConstants:3INPUT
const_1575167181697441000 == 
<<0,1,1,1>>
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575167181697442000 ==
(\A i,j \in Procs: decided[i] # -1 /\ decided[j] # -1 => decided[i] = decided[j])
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_1575167181697443000 ==
(\A i,j \in Procs: r[MAXROUND] => <> (decided[i] = decided[j] ))
----
=============================================================================
\* Modification History
\* Created Sat Nov 30 21:26:21 EST 2019 by pratik
