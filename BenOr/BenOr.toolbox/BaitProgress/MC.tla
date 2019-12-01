---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575234833842384000 == 
0
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575234833842385000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2MAXROUND
const_1575234833842386000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:3INPUT
const_1575234833842387000 == 
<<0,0,1,1>>
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575234833842388000 ==
(\E j \in Procs: TRUE => (decided[j] = -1 ))
----
=============================================================================
\* Modification History
\* Created Sun Dec 01 16:13:53 EST 2019 by pratik
