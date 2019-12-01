---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575234164235349000 == 
0
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575234164235350000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_1575234164235351000 == 
<<0,1,1,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_1575234164235352000 == 
3
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575234164235353000 ==
(\E j \in Procs: TRUE => (decided[j] = 1) \/ (decided[j] = -1))
----
=============================================================================
\* Modification History
\* Created Sun Dec 01 16:02:44 EST 2019 by pratik
