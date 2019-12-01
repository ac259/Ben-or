---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_157515987312091000 == 
1
----

\* CONSTANT definitions @modelParameterConstants:1N
const_157515987312092000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_157515987312093000 == 
<<0,0,1,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_157515987312094000 == 
4
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_157515987312095000 ==
(\A i,j \in Procs: r[i] = r[j] => decided[i] = decided[j])
----
=============================================================================
\* Modification History
\* Created Sat Nov 30 19:24:33 EST 2019 by pratik
