---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575170390228222000 == 
0
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575170390228223000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2MAXROUND
const_1575170390228224000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:3INPUT
const_1575170390228225000 == 
<<1,1,1,1>>
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575170390228226000 ==
(\A i,j \in Procs: (decided[i+j] # -1) /\ (i+j < N) => decided[i+j] \notin {0,1})
----
=============================================================================
\* Modification History
\* Created Sat Nov 30 22:19:50 EST 2019 by pratik
