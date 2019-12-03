---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_157521821498212000 == 
1
----

\* CONSTANT definitions @modelParameterConstants:1N
const_157521821498213000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_157521821498214000 == 
<<0,0,1,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_157521821498215000 == 
4
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_157521821498316000 ==
(\A i,j \in Procs: r[i] = r[j] => decided[i] = decided[j])
----
=============================================================================
\* Modification History
\* Created Sun Dec 01 11:36:54 EST 2019 by Ani
