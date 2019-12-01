---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575170456887232000 == 
0
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575170456887233000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2MAXROUND
const_1575170456887234000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:3INPUT
const_1575170456887235000 == 
<<1,1,1,1>>
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575170456887236000 ==
(\A i,j \in Procs: (decided[i+j] # -1) /\ (i+j <= N) => decided[i+j] # 1)
----
=============================================================================
\* Modification History
\* Created Sat Nov 30 22:20:56 EST 2019 by pratik
