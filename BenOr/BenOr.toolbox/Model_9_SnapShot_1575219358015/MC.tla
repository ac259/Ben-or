---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_157521934585232000 == 
0
----

\* CONSTANT definitions @modelParameterConstants:1N
const_157521934585233000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2INPUT
const_157521934585234000 == 
<<0,0,1,1>>
----

\* CONSTANT definitions @modelParameterConstants:3MAXROUND
const_157521934585235000 == 
3
----

\* PROPERTY definition @modelCorrectnessProperties:0
prop_157521934585236000 ==
<>(\A a \in Procs: ~ decided[a]# -1)
----
=============================================================================
\* Modification History
\* Created Sun Dec 01 11:55:45 EST 2019 by Ani
