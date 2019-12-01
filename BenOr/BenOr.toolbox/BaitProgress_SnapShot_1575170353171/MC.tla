---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575170351151212000 == 
0
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575170351151213000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2MAXROUND
const_1575170351151214000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:3INPUT
const_1575170351151215000 == 
<<1,1,1,1>>
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575170351151216000 ==
(\A i \in Procs:
	\A j \in Procs: (decided[i+j] # -1) /\ (i+j < N) => decided[i+j] \notin {0,1})
----
=============================================================================
\* Modification History
\* Created Sat Nov 30 22:19:11 EST 2019 by pratik
