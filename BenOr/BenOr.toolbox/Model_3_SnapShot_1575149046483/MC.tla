---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_15751490403737000 == 
0
----

\* CONSTANT definitions @modelParameterConstants:1N
const_15751490403738000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_15751490403739000 == 
<<1,1,1,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_157514904037310000 == 
3
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_157514904037311000 ==
(\A i,j \in Procs: decided[i] = decided[j])
----
=============================================================================
\* Modification History
\* Created Sat Nov 30 16:24:00 EST 2019 by pratik
