---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575170596920247000 == 
0
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575170596920248000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2MAXROUND
const_1575170596920249000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:3INPUT
const_1575170596920250000 == 
<<1,1,1,1>>
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575170596920251000 ==
(\A i \in Procs:
	\A j \in 0..N: (decided[i+j] # -1) /\ (i+j <= Procs) => decided[i+j] # 1)
----
=============================================================================
\* Modification History
\* Created Sat Nov 30 22:23:16 EST 2019 by pratik
