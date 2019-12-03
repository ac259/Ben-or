---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_15752243764657000 == 
0
----

\* CONSTANT definitions @modelParameterConstants:1N
const_15752243764658000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2MAXROUND
const_15752243764659000 == 
2
----

\* CONSTANT definitions @modelParameterConstants:3INPUT
const_157522437646510000 == 
<<1,1,1,1>>
----

\* PROPERTY definition @modelCorrectnessProperties:0
prop_157522437646511000 ==
<>(\A a \in Procs: ~decided[a]# -1 => p2v[a] \in {0,1})
----
=============================================================================
\* Modification History
\* Created Sun Dec 01 13:19:36 EST 2019 by Ani
