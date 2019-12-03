---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_157521771002584000 == 
0
----

\* CONSTANT definitions @modelParameterConstants:1N
const_157521771002585000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_157521771002586000 == 
<<1,1,1,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_157521771002587000 == 
3
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_157521771002588000 ==
Agreement == (\A i,j \in Procs: decided[i] # -1 /\ decided[j] # -1 => decided[i] = decided[j])
----
=============================================================================
\* Modification History
\* Created Sun Dec 01 11:28:30 EST 2019 by Ani
