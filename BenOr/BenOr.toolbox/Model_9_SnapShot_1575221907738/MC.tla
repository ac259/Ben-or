---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_157522189653662000 == 
0
----

\* CONSTANT definitions @modelParameterConstants:1N
const_157522189653663000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_157522189653664000 == 
<<0,0,1,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_157522189653665000 == 
3
----

\* PROPERTY definition @modelCorrectnessProperties:0
prop_157522189653666000 ==
<>(\A a \in Procs: ~decided[a]# -1)
----
=============================================================================
\* Modification History
\* Created Sun Dec 01 12:38:16 EST 2019 by Ani
