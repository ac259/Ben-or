---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575233303208292000 == 
0
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575233303208293000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2MAXROUND
const_1575233303208294000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:3INPUT
const_1575233303208295000 == 
<<1,1,0,0>>
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575233303208296000 ==
(\E j \in Procs: TRUE => (decided[j] = -1 ))
----
=============================================================================
\* Modification History
\* Created Sun Dec 01 15:48:23 EST 2019 by pratik
