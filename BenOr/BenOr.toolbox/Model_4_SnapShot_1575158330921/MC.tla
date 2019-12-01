---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_157515832791071000 == 
1
----

\* CONSTANT definitions @modelParameterConstants:1N
const_157515832791072000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_157515832791073000 == 
<<0,0,1,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_157515832791074000 == 
4
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_157515832791075000 ==
(\A i,j \in Procs: r[i] = r[j] => decided[i] = decided[j])
----
=============================================================================
\* Modification History
\* Created Sat Nov 30 18:58:47 EST 2019 by pratik
