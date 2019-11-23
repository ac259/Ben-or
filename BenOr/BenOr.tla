----------------------- MODULE BenOr----------------------------
(*\* BenOr algorithm *)
(*\* Copr. (c) Ani & Pratik, Nov 22, 2019 *)
EXTENDS Integers, TLC, Sequences
CONSTANT N, F, MAXROUND, INPUT
\* \* N Nodes, F Failures
ASSUME N \in Nat /\ F \in Nat /\ F<= N
\* \* Assuming INPUT is a valid Sequence in the form <<x,..,N>>
Procs == 1..N
(*
    --algorithm BenOr{
            \* \* Process to broadcast its own value to all the other processes
        fair process (p \in Procs){
            broadcast: print TRUE;
        } 
    }
*)
\* BEGIN TRANSLATION
VARIABLE pc

vars == << pc >>

ProcSet == (Procs)

Init == /\ pc = [self \in ProcSet |-> "broadcast"]

broadcast(self) == /\ pc[self] = "broadcast"
                   /\ PrintT(TRUE)
                   /\ pc' = [pc EXCEPT ![self] = "Done"]

p(self) == broadcast(self)

(* Allow infinite stuttering to prevent deadlock on termination. *)
Terminating == /\ \A self \in ProcSet: pc[self] = "Done"
               /\ UNCHANGED vars

Next == (\E self \in Procs: p(self))
           \/ Terminating

Spec == /\ Init /\ [][Next]_vars
        /\ \A self \in Procs : WF_vars(p(self))

Termination == <>(\A self \in ProcSet: pc[self] = "Done")

\* END TRANSLATION
================================================================
