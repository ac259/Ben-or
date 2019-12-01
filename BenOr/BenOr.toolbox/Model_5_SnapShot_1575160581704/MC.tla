---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575160578690120000 == 
1
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575160578690121000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_1575160578690122000 == 
<<0,0,1,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_1575160578690123000 == 
4
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575160578690124000 ==
(\A i,j \in Procs: r[i] = r[j] => decided[i] = decided[j])
----
=============================================================================
\* Modification History
\* Created Sat Nov 30 19:36:18 EST 2019 by pratik
