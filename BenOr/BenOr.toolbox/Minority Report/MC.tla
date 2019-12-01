---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575236905548430000 == 
3
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575236905548431000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_1575236905548432000 == 
<<0,1,1,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_1575236905548433000 == 
3
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575236905548434000 ==
(\E j \in Procs: TRUE => (decided[j] = 1) \/ (decided[j] = -1))
----
=============================================================================
\* Modification History
\* Created Sun Dec 01 16:48:25 EST 2019 by pratik
