----------------------- MODULE BenOr----------------------------
(*\* BenOr algorithm *)
(*\* Copr. (c) Ani & Pratik, Nov 22, 2019 *)
EXTENDS Integers, TLC, Sequences, FiniteSets
CONSTANT N, F, MAXROUND, INPUT
\* \* N Nodes, F Failures
ASSUME N \in Nat /\ F \in Nat /\ F<= N
\* \* Assuming INPUT is a valid Sequence in the form <<x,..,N>>
Procs == 1..N
(*
    --algorithm BenOr
    {
        variable p1Msg = {}, p2Msg = {};
        
        define
        {
            ExtractValSet(S) == {m.value: m \in S}
            CollectP1Msgs(r) == {m \in p1Msg: (m.round = r)}
            \*\* A(t,r) == {CHOOSE x \in CollectP1Msgs(r): 1..(N-F)} 
        }

        macro SendP1(p,r,i)
        {
            \* \* Sends initial value i
            p1Msg := p1Msg \union {[nodeid |-> p, round |-> r, value |-> i]}
        }
        
        macro RvcP1(p,r,p2v)
        {
            await (Cardinality(CollectP1Msgs(r)) = N-F);
            \* \* The above statement gives A which is first N-F messages received
            \* \* Need to get the values from the messages out and determine if all are same
            if (\E v \in {0,1}: \A a \in ExtractValSet(CollectP1Msgs(r)): a = v)
                {
                    if (ExtractValSet(CollectP1Msgs(r)) \intersect {1} = {1})
                        p2v := 1;
                    else
                        p2v := 0;
                }
            
        }
        
        fair process (p \in Procs)
        \* \* p2v is b and p1v is a http://www.nada.kth.se/kurser/kth/2D5340/wwwbook/node17.html 
        variable r = 1, p1v = INPUT[self], p2v = -1, decided =-1;
        {    
            broadcast: while(TRUE) 
            {
                \* \* SendP1 -> macro which will post the value of that node to the message board as p1v
                P1S: SendP1(self,r,p1v);
                \* \* RvcP1 -> Get n-f values with p1v
                P1R: RvcP1(self,r,p2v);
                print p2v;
                \* \* Logic can be included here or in the above macro. Basically we need to finalize b[p] == v if there is a majority(n-f), else b[p] = -1
                \* \* SendP2 -> Macro which sends the b value of the node to the message board as p2v
                \* \* RvcP2 -> Get n-f values with p2v
                (* \* Logic can be included here or in the above macro. Basically need to finalize decided[p] = v if there is a majority v in (n-f),
                else pick random b if some value is not -1
                    else if all are undecided pick uniformly between (0,1) *)
                r := r + 1;
            }
        } 
    }
*)
\* BEGIN TRANSLATION
VARIABLES p1Msg, p2Msg, pc

(* define statement *)
ExtractValSet(S) == {m.value: m \in S}
CollectP1Msgs(r) == {m \in p1Msg: (m.round = r)}

VARIABLES r, p1v, p2v, decided

vars == << p1Msg, p2Msg, pc, r, p1v, p2v, decided >>

ProcSet == (Procs)

Init == (* Global variables *)
        /\ p1Msg = {}
        /\ p2Msg = {}
        (* Process p *)
        /\ r = [self \in Procs |-> 1]
        /\ p1v = [self \in Procs |-> INPUT[self]]
        /\ p2v = [self \in Procs |-> -1]
        /\ decided = [self \in Procs |-> -1]
        /\ pc = [self \in ProcSet |-> "broadcast"]

broadcast(self) == /\ pc[self] = "broadcast"
                   /\ pc' = [pc EXCEPT ![self] = "P1S"]
                   /\ UNCHANGED << p1Msg, p2Msg, r, p1v, p2v, decided >>

P1S(self) == /\ pc[self] = "P1S"
             /\ p1Msg' = (p1Msg \union {[nodeid |-> self, round |-> r[self], value |-> p1v[self]]})
             /\ pc' = [pc EXCEPT ![self] = "P1R"]
             /\ UNCHANGED << p2Msg, r, p1v, p2v, decided >>

P1R(self) == /\ pc[self] = "P1R"
             /\ (Cardinality(CollectP1Msgs(r[self])) = N-F)
             /\ IF \E v \in {0,1}: \A a \in ExtractValSet(CollectP1Msgs(r[self])): a = v
                   THEN /\ IF ExtractValSet(CollectP1Msgs(r[self])) \intersect {1} = {1}
                              THEN /\ p2v' = [p2v EXCEPT ![self] = 1]
                              ELSE /\ p2v' = [p2v EXCEPT ![self] = 0]
                   ELSE /\ TRUE
                        /\ p2v' = p2v
             /\ PrintT(p2v'[self])
             /\ r' = [r EXCEPT ![self] = r[self] + 1]
             /\ pc' = [pc EXCEPT ![self] = "broadcast"]
             /\ UNCHANGED << p1Msg, p2Msg, p1v, decided >>

p(self) == broadcast(self) \/ P1S(self) \/ P1R(self)

Next == (\E self \in Procs: p(self))

Spec == /\ Init /\ [][Next]_vars
        /\ \A self \in Procs : WF_vars(p(self))

\* END TRANSLATION
================================================================