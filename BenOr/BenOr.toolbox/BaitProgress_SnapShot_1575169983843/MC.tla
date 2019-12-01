---- MODULE MC ----
EXTENDS BenOr, TLC

\* CONSTANT definitions @modelParameterConstants:0F
const_1575169981801187000 == 
0
----

\* CONSTANT definitions @modelParameterConstants:1N
const_1575169981801188000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2MAXROUND
const_1575169981801189000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:3INPUT
const_1575169981801190000 == 
<<1,1,1,1>>
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1575169981801191000 ==
(\A i \in Procs:(decided[i] # -1) => decided[i] \notin {0,1})
----
=============================================================================
\* Modification History
\* Created Sat Nov 30 22:13:01 EST 2019 by pratik
