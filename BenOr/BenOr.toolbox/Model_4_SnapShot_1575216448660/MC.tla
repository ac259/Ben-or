---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_157521643830627000 == 
3
----

\* CONSTANT definitions @modelParameterConstants:1N
const_157521643830628000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_157521643830629000 == 
<<0,0,0,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_157521643830630000 == 
2
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_157521643830731000 ==
(\A i,j \in Procs: decided[i] # -1 /\ decided[j] # -1 => decided[i] = decided[j])
----
=============================================================================
\* Modification History
\* Created Sun Dec 01 11:07:18 EST 2019 by Ani
