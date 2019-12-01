---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575232921710235000 == 
1
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575232921710236000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2MAXROUND
const_1575232921710237000 == 
2
----

\* CONSTANT definitions @modelParameterConstants:3INPUT
const_1575232921710238000 == 
<<0,0,0,0>>
----

\* PROPERTY definition @modelCorrectnessProperties:0
prop_1575232921710239000 ==
(\E j \in Procs: TRUE => <>(decided[j] # -1 ))
----
=============================================================================
\* Modification History
\* Created Sun Dec 01 15:42:01 EST 2019 by pratik
