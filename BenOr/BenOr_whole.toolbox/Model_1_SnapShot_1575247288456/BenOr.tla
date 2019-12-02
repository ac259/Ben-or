----------------------- MODULE BenOr----------------------------
EXTENDS Integers, TLC, Sequences, FiniteSets
CONSTANT N, F, MAXROUND, INPUT
\* \* N Nodes, F Failures
ASSUME N \in Nat /\ F \in Nat /\ F<= N
\* \* Assuming INPUT is a valid Sequence in the form <<x,..,N>>
Procs == 1..N
(*
    --fair algorithm BenOr
    {
        variable p1Msg = {}, p2Msg = {};
        
        define
        {
            ExtractValSet(S) == {m.value: m \in S}
            CollectP1Msgs(r) == {m \in p1Msg: (m.round = r)}
            CollectP2Msgs(r) == {m \in p2Msg: (m.round = r)}
            ValueMsg(r,v) ==  {m \in p1Msg: (m.round = r) /\ (m.value = v)}
            ValueMsgP2(r,v) ==  {m \in p2Msg: (m.round = r) /\ (m.value = v)}
            
        }

        macro SendP1(r,i)
        {
            \* \* Sends initial value i
            \*print(i);
            p1Msg := p1Msg \union {[nodeid |-> self, round |-> r, value |-> i]};
            
        }
        
        macro RvcP1(r)
        {
            \* \* The below statement gives A which is first N-F messages received
            await (Cardinality(CollectP1Msgs(r)) >= N - F);
           
            \* print("inside recieve");
            if ((Cardinality(ValueMsg(r,1))*2 > N)){
            p2v := 1;
            \* print("1");
            }
            else if ((Cardinality(ValueMsg(r,0))*2 > N)) {
            \*  print("0");
            p2v := 0;
            }
            else{
            \* print("-1");
            p2v := -1;
            }
        }
     
         macro SendP2(r,i)
        {
            \* \* Sends initial value i
            p2Msg := p2Msg \union {[nodeid |-> self, round |-> r, value |-> i]}
        }
        
        macro RvcP2(r)
        {
            \* \* The below statement gives A which is first N-F messages received
            await (Cardinality(CollectP2Msgs(r)) >= N - F);
            
            \* print("inside recieve");
            if (Cardinality(ValueMsgP2(r,1)) >= F+1 ){
            decided := 1;
            }
            else if (Cardinality(ValueMsgP2(r,0)) >= F+1) {
            decided := 0;
            };
            if ((Cardinality(ValueMsgP2(r,0)) >0) ){
            p1v := 0;
            }
            else if ((Cardinality(ValueMsgP2(r,1)) >0) ){
            p1v := 1;
            }
            else if ((Cardinality(ValueMsgP2(r,-1)) >=1)){
            with (v \in {0,1}){
                p1v := v;
            };
            };
        }
        
        fair process (p \in Procs)
        variable r = 1, p1v = INPUT[self], p2v = -1, decided =-1;
        {    
            entry: while(r <MAXROUND) 
            {
                \* \* SendP1 -> macro which will post the value of that node to the message board as p1v
                P1S: SendP1(r,p1v);
                \* \* RvcP1 -> Get n-f values with p1v
                P1R: RvcP1(r);
                \* \* SendP2 -> Macro which sends the b value of the node to the message board as p2v
                P2S: SendP2(r,p2v);
                \* \* RvcP2 -> Get n-f values with p2v
                P2R: {
                RvcP2(r);
                r := r + 1;
                };
                };
            };
        } 
    }
*)
\* BEGIN TRANSLATION
VARIABLES p1Msg, p2Msg, pc

(* define statement *)
ExtractValSet(S) == {m.value: m \in S}
CollectP1Msgs(r) == {m \in p1Msg: (m.round = r)}
CollectP2Msgs(r) == {m \in p2Msg: (m.round = r)}
ValueMsg(r,v) ==  {m \in p1Msg: (m.round = r) /\ (m.value = v)}
ValueMsgP2(r,v) ==  {m \in p2Msg: (m.round = r) /\ (m.value = v)}

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
        /\ pc = [self \in ProcSet |-> "entry"]

entry(self) == /\ pc[self] = "entry"
               /\ IF r[self] <MAXROUND
                     THEN /\ pc' = [pc EXCEPT ![self] = "P1S"]
                     ELSE /\ pc' = [pc EXCEPT ![self] = "Done"]
               /\ UNCHANGED << p1Msg, p2Msg, r, p1v, p2v, decided >>

P1S(self) == /\ pc[self] = "P1S"
             /\ p1Msg' = (p1Msg \union {[nodeid |-> self, round |-> r[self], value |-> p1v[self]]})
             /\ pc' = [pc EXCEPT ![self] = "P1R"]
             /\ UNCHANGED << p2Msg, r, p1v, p2v, decided >>

P1R(self) == /\ pc[self] = "P1R"
             /\ (Cardinality(CollectP1Msgs(r[self])) >= N - F)
             /\ IF (Cardinality(ValueMsg(r[self],1))*2 > N)
                   THEN /\ p2v' = [p2v EXCEPT ![self] = 1]
                   ELSE /\ IF (Cardinality(ValueMsg(r[self],0))*2 > N)
                              THEN /\ p2v' = [p2v EXCEPT ![self] = 0]
                              ELSE /\ p2v' = [p2v EXCEPT ![self] = -1]
             /\ pc' = [pc EXCEPT ![self] = "P2S"]
             /\ UNCHANGED << p1Msg, p2Msg, r, p1v, decided >>

P2S(self) == /\ pc[self] = "P2S"
             /\ p2Msg' = (p2Msg \union {[nodeid |-> self, round |-> r[self], value |-> p2v[self]]})
             /\ pc' = [pc EXCEPT ![self] = "P2R"]
             /\ UNCHANGED << p1Msg, r, p1v, p2v, decided >>

P2R(self) == /\ pc[self] = "P2R"
             /\ (Cardinality(CollectP2Msgs(r[self])) >= N - F)
             /\ IF Cardinality(ValueMsgP2(r[self],1)) >= F+1
                   THEN /\ decided' = [decided EXCEPT ![self] = 1]
                   ELSE /\ IF Cardinality(ValueMsgP2(r[self],0)) >= F+1
                              THEN /\ decided' = [decided EXCEPT ![self] = 0]
                              ELSE /\ TRUE
                                   /\ UNCHANGED decided
             /\ IF (Cardinality(ValueMsgP2(r[self],0)) >0)
                   THEN /\ p1v' = [p1v EXCEPT ![self] = 0]
                   ELSE /\ IF (Cardinality(ValueMsgP2(r[self],1)) >0)
                              THEN /\ p1v' = [p1v EXCEPT ![self] = 1]
                              ELSE /\ IF (Cardinality(ValueMsgP2(r[self],-1)) >=1)
                                         THEN /\ \E v \in {0,1}:
                                                   p1v' = [p1v EXCEPT ![self] = v]
                                         ELSE /\ TRUE
                                              /\ p1v' = p1v
             /\ r' = [r EXCEPT ![self] = r[self] + 1]
             /\ pc' = [pc EXCEPT ![self] = "entry"]
             /\ UNCHANGED << p1Msg, p2Msg, p2v >>

p(self) == entry(self) \/ P1S(self) \/ P1R(self) \/ P2S(self) \/ P2R(self)

(* Allow infinite stuttering to prevent deadlock on termination. *)
Terminating == /\ \A self \in ProcSet: pc[self] = "Done"
               /\ UNCHANGED vars

Next == (\E self \in Procs: p(self))
           \/ Terminating

Spec == /\ Init /\ [][Next]_vars
        /\ WF_vars(Next)
        /\ \A self \in Procs : WF_vars(p(self))

Termination == <>(\A self \in ProcSet: pc[self] = "Done")

\* END TRANSLATION
----------------------------------------------------------------
Agreement == (\A i,j \in Procs: decided[i] # -1 /\ decided[j] # -1 => decided[i] = decided[j])
MinorityReport == (\E j \in Procs: TRUE => (decided[j] = 1) \/ (decided[j] = -1))
Progress == (\E j \in Procs: TRUE => <>(decided[j] # -1 ))
BaitProgress == (\E j \in Procs: TRUE => (decided[j] = -1 ))
================================================================
==========
Agreement:
==========

We see that agreement is always satisfied, even when N < 5, F < 5, and F > N/2. According to our
invariant property, we don't compare the initial value as the process has not been decided. 

=========
Progress:
=========

We see that progress property is always satisfied, when we give same preference values and vary the
number of failures to zero or one and four nodes, this is in Sync with the theoritical assumptions of 
algorithm.

===================
Bait Progress:
===================

We have defined a Bait Progress property which baits the model checker to find one process which
have decided value as -1.The model checker using this invariant, finds an execution where all the nodes 
have a decided value \in {0,1}

---------------------------------------------
Progress Violates, Bait Progress finds a way.
---------------------------------------------

Consider example of Input(INPUT) as <<0,0,1,1>>, MaxRounds(r) as 3, Nodes(N) as 4, Failures(F) as 0. 
We see that here clearly there is no majority, the model checker will show a run where progress is 
not achieved and all the decided values are -1. By intuition, this is when the bit flips to the input
itself, that is there are two zeros and two ones.

On the other hand, while checking Bait Progress, We see that the invariant breaks, that is 
Consensus is reached. The model checker presents a run where the bit flips in such a way that it gives
a majority in the next round. Eventually, decided value is k-locked and consensus is reached.

One particular Trace of consensus of zero is as follows(Key Stages are given below):

After certain executions, at r = <<2,2,2,1>> the third process flips its value to zero. The fourth 
process also flips the bit at r = <<2,2,2,2>>. Thereby creating a majority Process one k-locks zero 
and moves to round 3, consequently when all the processes reach round 3, consensus is reached by
decided = <<0,0,0,0>>

===================
MINORITY Report: 
===================

Minority report is bait progress with consensus zero for a particular test case.

Minority report doesn't break when there are no failures(F=0) which is understandable as there is a
majority. When F = 1 it is possible to get zero as consensus and the model

----------------
Minority Rounds.
----------------

When we have failures > 0, Interesting observation is that flipping of the bits takes atleast 3 rounds 
to achieve zero as the consensus. For failure = 1, we observe this trace.

Intially, Input(INPUT) as <<0,1,1,1>>, MaxRounds(r) as 3, Nodes(N) as 4, Failures(F) as 1.
At r = <<3,2,2,1>> process 1 k-locks value as zero because of random bit flips to zero, which leads to 
majority in the previous rounds. Therefore, all other processes after reaching round 3 have decided 
value as k-0.
