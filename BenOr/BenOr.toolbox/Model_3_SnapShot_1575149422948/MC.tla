---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_157514941992917000 == 
0
----

\* CONSTANT definitions @modelParameterConstants:1N
const_157514941992918000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_157514941992919000 == 
<<1,1,1,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_157514941992920000 == 
3
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_157514941992921000 ==
(\A i,j \in Procs: decided[i] = decided[j] /\ r[i] = r[j])
----
=============================================================================
\* Modification History
\* Created Sat Nov 30 16:30:19 EST 2019 by pratik
