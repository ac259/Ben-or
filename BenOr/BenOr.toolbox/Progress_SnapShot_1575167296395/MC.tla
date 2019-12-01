---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575167294376462000 == 
1
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575167294376463000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2MAXROUND
const_1575167294376464000 == 
2
----

\* CONSTANT definitions @modelParameterConstants:3INPUT
const_1575167294376465000 == 
<<0,1,1,1>>
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575167294377466000 ==
(\A i,j \in Procs: decided[i] # -1 /\ decided[j] # -1 => decided[i] = decided[j])
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_1575167294377467000 ==
(\A i,j \in Procs: r[MAXROUND] /\ (decided[i] # -1) /\ (decided[j] # -1) => <> (decided[i] = decided[j] ))
----
=============================================================================
\* Modification History
\* Created Sat Nov 30 21:28:14 EST 2019 by pratik
