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
            broadcast: while(TRUE) {
                \* \* SendP1 -> macro which will post the value of that node to the message board as p1v
                \* \* RvcP1 -> Get n-f values with p1v 
                \* \* Logic can be included here or in the above macro. Basically we need to finalize b[p] == v if there is a majority(n-f), else b[p] = -1
                \* \* SendP2 -> Macro which sends the b value of the node to the message board as p2v
                \* \* RvcP2 -> Get n-f values with p2v
                (* \* Logic can be included here or in the above macro. Basically need to finalize decided[p] = v if there is a majority v in (n-f),
                else pick random b if some value is not -1
                    else if all are undecided pick uniformly between (0,1) *)
            }
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
