---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_157515891509781000 == 
1
----

\* CONSTANT definitions @modelParameterConstants:1N
const_157515891509782000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_157515891509783000 == 
<<0,0,1,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_157515891509784000 == 
4
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_157515891509785000 ==
(\A i,j \in Procs: r[i] = r[j] => decided[i] = decided[j])
----
=============================================================================
\* Modification History
\* Created Sat Nov 30 19:08:35 EST 2019 by pratik
