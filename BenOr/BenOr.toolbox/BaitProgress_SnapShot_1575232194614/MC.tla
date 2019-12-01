---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575232193599164000 == 
1
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575232193599165000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2MAXROUND
const_1575232193599166000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:3INPUT
const_1575232193599167000 == 
<<0,1,1,1>>
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575232193599168000 ==
(\E j \in Procs: TRUE => (decided[j] # -1 ))
----
=============================================================================
\* Modification History
\* Created Sun Dec 01 15:29:53 EST 2019 by pratik
