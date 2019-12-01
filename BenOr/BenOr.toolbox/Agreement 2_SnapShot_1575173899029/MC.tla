---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575173897018279000 == 
2
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575173897018280000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2MAXROUND
const_1575173897018281000 == 
2
----

\* CONSTANT definitions @modelParameterConstants:3INPUT
const_1575173897018282000 == 
<<1,1,1,1>>
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575173897018283000 ==
(\A i,j \in Procs: \E q \in 1..MAXROUND: (decided[i] # -1) /\ r[i] = q => (decided[j] \in {0,1}) /\ r[j]=q+1 )
----
=============================================================================
\* Modification History
\* Created Sat Nov 30 23:18:17 EST 2019 by pratik
