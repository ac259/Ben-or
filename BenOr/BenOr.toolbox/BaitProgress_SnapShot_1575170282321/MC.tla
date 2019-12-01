---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575170280303197000 == 
0
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575170280303198000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2MAXROUND
const_1575170280303199000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:3INPUT
const_1575170280303200000 == 
<<1,1,1,1>>
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575170280304201000 ==
(\A i \in Procs:
	\A j \in 0..Procs: (decided[i+j] # -1) /\ (i+j < N) => decided[i+j] \notin {0,1})
----
=============================================================================
\* Modification History
\* Created Sat Nov 30 22:18:00 EST 2019 by pratik
