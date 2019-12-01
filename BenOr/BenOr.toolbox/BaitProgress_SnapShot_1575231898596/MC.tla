---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575231896585140000 == 
1
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575231896585141000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2MAXROUND
const_1575231896585142000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:3INPUT
const_1575231896585143000 == 
<<0,1,1,1>>
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575231896585144000 ==
(\A i,j \in Procs: r[i] = r[j] => (decided[i] = -1 ) \/ (decided[j] = -1))
----
=============================================================================
\* Modification History
\* Created Sun Dec 01 15:24:56 EST 2019 by pratik
