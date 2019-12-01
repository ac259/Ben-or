---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575170322323207000 == 
0
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575170322323208000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2MAXROUND
const_1575170322323209000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:3INPUT
const_1575170322323210000 == 
<<1,1,1,1>>
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575170322324211000 ==
(\A i \in Procs:
	\A j \in Procs: (decided[i+j] # -1) /\ (i+j < N) => decided[i+j] \notin {0,1})
----
=============================================================================
\* Modification History
\* Created Sat Nov 30 22:18:42 EST 2019 by pratik
