---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575234036045328000 == 
0
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575234036045329000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_1575234036045330000 == 
<<0,1,1,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_1575234036045331000 == 
3
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575234036045332000 ==
(\A i,j \in Procs: decided[i] # -1 /\ decided[j] # -1 /\ decided[i] # 0 /\ decided[j] # 0 => ( decided[i] = decided[j]))
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_1575234036045333000 ==
(\E j \in Procs: TRUE => (decided[j] # 0))
----
=============================================================================
\* Modification History
\* Created Sun Dec 01 16:00:36 EST 2019 by pratik
