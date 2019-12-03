---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_157521928222522000 == 
0
----

\* CONSTANT definitions @modelParameterConstants:1N
const_157521928222523000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_157521928222524000 == 
<<1,1,1,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_157521928222525000 == 
3
----

\* PROPERTY definition @modelCorrectnessProperties:0
prop_157521928222526000 ==
<>(\A a \in Procs: ~ decided[a]# -1)
----
=============================================================================
\* Modification History
\* Created Sun Dec 01 11:54:42 EST 2019 by Ani
