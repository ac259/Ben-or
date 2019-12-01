---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575233843585304000 == 
0
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575233843585305000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2MAXROUND
const_1575233843585306000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:3INPUT
const_1575233843585307000 == 
<<0,1,1,1>>
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575233843585308000 ==
(\E j \in Procs: TRUE => (decided[j] = -1 ))
----
=============================================================================
\* Modification History
\* Created Sun Dec 01 15:57:23 EST 2019 by pratik
