---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575167370601474000 == 
1
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575167370601475000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2MAXROUND
const_1575167370601476000 == 
2
----

\* CONSTANT definitions @modelParameterConstants:3INPUT
const_1575167370601477000 == 
<<0,1,1,1>>
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575167370602478000 ==
(\A i,j \in Procs: decided[i] # -1 /\ decided[j] # -1 => decided[i] = decided[j])
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_1575167370602479000 ==
 (\A i,j \in Procs: \A q \in 1..MAXROUND: r[q] = MAXROUND /\ (decided[i] # -1) /\ (decided[j] # -1) => <> (decided[i] = decided[j] ))
----
=============================================================================
\* Modification History
\* Created Sat Nov 30 21:29:30 EST 2019 by pratik
