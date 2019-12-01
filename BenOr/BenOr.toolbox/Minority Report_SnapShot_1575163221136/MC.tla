---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575163218123259000 == 
1
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575163218123260000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_1575163218123261000 == 
<<0,1,1,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_1575163218123262000 == 
3
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575163218123263000 ==
(\A i,j \in Procs: decided[i] # -1 /\ decided[j] # -1 => decided[i] # 0 /\ decided[j] # 0)
----
=============================================================================
\* Modification History
\* Created Sat Nov 30 20:20:18 EST 2019 by pratik
