---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575233259356280000 == 
1
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575233259356281000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2MAXROUND
const_1575233259356282000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:3INPUT
const_1575233259356283000 == 
<<1,1,0,0>>
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575233259356284000 ==
(\E j \in Procs: TRUE => (decided[j] = -1 ))
----
=============================================================================
\* Modification History
\* Created Sun Dec 01 15:47:39 EST 2019 by pratik
