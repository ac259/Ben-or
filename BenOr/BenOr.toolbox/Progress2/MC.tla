---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575232959052245000 == 
2
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575232959052246000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2MAXROUND
const_1575232959052247000 == 
2
----

\* CONSTANT definitions @modelParameterConstants:3INPUT
const_1575232959052248000 == 
<<0,0,0,0>>
----

\* PROPERTY definition @modelCorrectnessProperties:0
prop_1575232959052249000 ==
(\E j \in Procs: TRUE => <>(decided[j] # -1 ))
----
=============================================================================
\* Modification History
\* Created Sun Dec 01 15:42:39 EST 2019 by pratik
