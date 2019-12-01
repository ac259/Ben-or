---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575160043365105000 == 
1
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575160043365106000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_1575160043365107000 == 
<<0,0,1,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_1575160043365108000 == 
4
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575160043366109000 ==
(\A i,j \in Procs: r[i] = r[j] => decided[i] = decided[j])
----
=============================================================================
\* Modification History
\* Created Sat Nov 30 19:27:23 EST 2019 by pratik
