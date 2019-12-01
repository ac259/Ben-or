---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575167444235498000 == 
3
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575167444235499000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2MAXROUND
const_1575167444235500000 == 
2
----

\* CONSTANT definitions @modelParameterConstants:3INPUT
const_1575167444235501000 == 
<<0,0,1,1>>
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575167444235502000 ==
(\A i,j \in Procs: decided[i] # -1 /\ decided[j] # -1 => decided[i] = decided[j])
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_1575167444235503000 ==
 (\A i,j \in Procs: \A q \in 1..MAXROUND: r[q] = MAXROUND /\ (decided[i] # -1) /\ (decided[j] # -1) => <> (decided[i] = decided[j] ))
----
=============================================================================
\* Modification History
\* Created Sat Nov 30 21:30:44 EST 2019 by pratik
