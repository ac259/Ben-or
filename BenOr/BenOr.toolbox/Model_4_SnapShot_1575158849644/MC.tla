---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_157515884663276000 == 
1
----

\* CONSTANT definitions @modelParameterConstants:1N
const_157515884663277000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_157515884663278000 == 
<<0,0,1,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_157515884663279000 == 
4
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_157515884663380000 ==
(\A i,j \in Procs: r[i] = r[j] => decided[i] = decided[j])
----
=============================================================================
\* Modification History
\* Created Sat Nov 30 19:07:26 EST 2019 by pratik
