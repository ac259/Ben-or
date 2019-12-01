---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575173935957289000 == 
3
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575173935957290000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2MAXROUND
const_1575173935957291000 == 
2
----

\* CONSTANT definitions @modelParameterConstants:3INPUT
const_1575173935957292000 == 
<<1,1,1,1>>
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575173935957293000 ==
(\A i,j \in Procs: \E q \in 1..MAXROUND: (decided[i] # -1) /\ r[i] = q => (decided[j] \in {0,1}) /\ r[j]=q+1 )
----
=============================================================================
\* Modification History
\* Created Sat Nov 30 23:18:55 EST 2019 by pratik
