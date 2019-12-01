---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575231793387128000 == 
1
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575231793387129000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2MAXROUND
const_1575231793387130000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:3INPUT
const_1575231793387131000 == 
<<0,1,1,1>>
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575231793387132000 ==
(\A i,j \in Procs: r[i] = r[j]=> decided[i] = -1 /\ decided[j] = -1)
----
=============================================================================
\* Modification History
\* Created Sun Dec 01 15:23:13 EST 2019 by pratik
