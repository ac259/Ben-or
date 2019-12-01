---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575161753448138000 == 
1
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575161753448139000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_1575161753448140000 == 
<<0,0,1,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_1575161753448141000 == 
4
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575161753448142000 ==
(\A i,j \in Procs: r[i] = r[j] => decided[i] = decided[j])
----
=============================================================================
\* Modification History
\* Created Sat Nov 30 19:55:53 EST 2019 by pratik
