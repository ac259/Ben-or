---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575234416980379000 == 
2
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575234416980380000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_1575234416980381000 == 
<<0,1,1,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_1575234416980382000 == 
3
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575234416980383000 ==
(\E j \in Procs: TRUE => (decided[j] = 1) \/ (decided[j] = -1))
----
=============================================================================
\* Modification History
\* Created Sun Dec 01 16:06:56 EST 2019 by pratik
