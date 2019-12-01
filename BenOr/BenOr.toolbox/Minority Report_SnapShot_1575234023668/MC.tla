---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575234006655316000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575234006655317000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_1575234006655318000 == 
<<0,1,1,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_1575234006655319000 == 
3
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575234006655320000 ==
(\A i,j \in Procs: decided[i] # -1 /\ decided[j] # -1 /\ decided[i] # 0 /\ decided[j] # 0 => ( decided[i] = decided[j]))
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_1575234006655321000 ==
(\E j \in Procs: TRUE => (decided[j] # 0))
----
=============================================================================
\* Modification History
\* Created Sun Dec 01 16:00:06 EST 2019 by pratik
