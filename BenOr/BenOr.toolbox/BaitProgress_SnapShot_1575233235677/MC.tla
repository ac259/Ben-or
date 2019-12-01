---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575233233667268000 == 
1
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575233233667269000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2MAXROUND
const_1575233233667270000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:3INPUT
const_1575233233667271000 == 
<<0,0,0,0>>
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575233233667272000 ==
(\E j \in Procs: TRUE => (decided[j] = -1 ))
----
=============================================================================
\* Modification History
\* Created Sun Dec 01 15:47:13 EST 2019 by pratik
