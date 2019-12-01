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
        variable p1Msg = {}, p2Msg = {}, DBCollectP1Msgs={};
        
        define
        {
            ExtractValSet(S) == {m.value: m \in S}
            CollectP1Msgs(r) == {m \in p1Msg: (m.round = r)}
            CollectP2Msgs(r) == {m \in p2Msg: (m.round = r)}
            \*\* A(t,r) == {CHOOSE x \in CollectP1Msgs(r): 1..(N-F)} 
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
        (*\* This function deadlocks since I am using = to compare, ideally it should be >=
        But the algorithm would need to find first n-f elements in the next line which I am not able to do
        *)
            await (Cardinality(CollectP1Msgs(r)) >= N - F);
            \*\* DBCollectP1Msgs := DBCollectP1Msgs \union {[C |-> Cardinality(CollectP1Msgs(r)), M |-> CollectP1Msgs(r)]};
            \* \* The above statement gives A which is first N-F messages received
            \* \* Need to get the values from the messages out and determine if all are same
           
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
            (* This condition is not working correctly as if the messages
            that make it through are <<0,0,1,1>> assuming for simplicity no failures
            it should return -1 
            else {
            print("-1");
            };
            *)
        }
     
         macro SendP2(r,i)
        {
            \* \* Sends initial value i
            p2Msg := p2Msg \union {[nodeid |-> self, round |-> r, value |-> i]}
        }
        
        macro RvcP2(r)
        {
        (*\* This function deadlocks since I am using = to compare, ideally it should be >=
        But the algorithm would need to find first n-f elements in the next line which I am not able to do
        *)
            await (Cardinality(CollectP2Msgs(r)) >= N - F);
            \*\* DBCollectP1Msgs := DBCollectP1Msgs \union {[C |-> Cardinality(CollectP1Msgs(r)), M |-> CollectP1Msgs(r)]};
            \* \* The above statement gives A which is first N-F messages received
            \* \* Need to get the values from the messages out and determine if all are same
           
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
            (* This condition is not working correctly as if the messages
            that make it through are <<0,0,1,1>> assuming for simplicity no failures
            it should return -1 
            else {
            print("-1");
            };
            *)
        }
        
        fair process (p \in Procs)
        \* \* p2v is b and p1v is a http://www.nada.kth.se/kurser/kth/2D5340/wwwbook/node17.html 
        variable r = 1, p1v = INPUT[self], p2v = -1, decided =-1;
        {    
            entry: while(r <MAXROUND) 
            {
                \* \* SendP1 -> macro which will post the value of that node to the message board as p1v
                P1S: SendP1(r,p1v);
                \* \* RvcP1 -> Get n-f values with p1v
                P1R: RvcP1(r);
                \* \*DONE in the above macro|Logic can be included here or in the above macro. Basically we need to finalize b[p] == v if there is a majority(n-f), else b[p] = -1
                \* \* SendP2 -> Macro which sends the b value of the node to the message board as p2v
                P2S: SendP2(r,p2v);
                \* \* RvcP2 -> Get n-f values with p2v
                P2R: {
                RvcP2(r);
                r := r + 1;
                };
                };
                (* \* Logic can be included here or in the above macro. Basically need to finalize decided[p] = v if there is a majority v in (n-f),
                else pick random b if some value is not -1
                    else if all are undecided pick uniformly between (0,1) *)
            };
        } 
    }
*)
\* BEGIN TRANSLATION
VARIABLES p1Msg, p2Msg, DBCollectP1Msgs, pc

(* define statement *)
ExtractValSet(S) == {m.value: m \in S}
CollectP1Msgs(r) == {m \in p1Msg: (m.round = r)}
CollectP2Msgs(r) == {m \in p2Msg: (m.round = r)}

ValueMsg(r,v) ==  {m \in p1Msg: (m.round = r) /\ (m.value = v)}
ValueMsgP2(r,v) ==  {m \in p2Msg: (m.round = r) /\ (m.value = v)}

VARIABLES r, p1v, p2v, decided

vars == << p1Msg, p2Msg, DBCollectP1Msgs, pc, r, p1v, p2v, decided >>

ProcSet == (Procs)

Init == (* Global variables *)
        /\ p1Msg = {}
        /\ p2Msg = {}
        /\ DBCollectP1Msgs = {}
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
               /\ UNCHANGED << p1Msg, p2Msg, DBCollectP1Msgs, r, p1v, p2v, 
                               decided >>

P1S(self) == /\ pc[self] = "P1S"
             /\ p1Msg' = (p1Msg \union {[nodeid |-> self, round |-> r[self], value |-> p1v[self]]})
             /\ pc' = [pc EXCEPT ![self] = "P1R"]
             /\ UNCHANGED << p2Msg, DBCollectP1Msgs, r, p1v, p2v, decided >>

P1R(self) == /\ pc[self] = "P1R"
             /\ (Cardinality(CollectP1Msgs(r[self])) >= N - F)
             /\ IF (Cardinality(ValueMsg(r[self],1))*2 > N)
                   THEN /\ p2v' = [p2v EXCEPT ![self] = 1]
                   ELSE /\ IF (Cardinality(ValueMsg(r[self],0))*2 > N)
                              THEN /\ p2v' = [p2v EXCEPT ![self] = 0]
                              ELSE /\ p2v' = [p2v EXCEPT ![self] = -1]
             /\ pc' = [pc EXCEPT ![self] = "P2S"]
             /\ UNCHANGED << p1Msg, p2Msg, DBCollectP1Msgs, r, p1v, decided >>

P2S(self) == /\ pc[self] = "P2S"
             /\ p2Msg' = (p2Msg \union {[nodeid |-> self, round |-> r[self], value |-> p2v[self]]})
             /\ pc' = [pc EXCEPT ![self] = "P2R"]
             /\ UNCHANGED << p1Msg, DBCollectP1Msgs, r, p1v, p2v, decided >>

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
             /\ UNCHANGED << p1Msg, p2Msg, DBCollectP1Msgs, p2v >>

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
---------------------------------------------------------------
Agreement == (\A i,j \in Procs: decided[i] # -1 /\ decided[j] # -1 => decided[i] = decided[j])
MinorityReport == (\A i,j \in Procs: decided[i] # -1 /\ decided[j] # -1 /\ decided[i] # 0 /\ decided[j] # 0 => ( decided[i] = decided[j]))
Progress == (\A i,j \in Procs: \A q \in 1..MAXROUND: r[q] = MAXROUND /\ (decided[i] # -1) /\ (decided[j] # -1) => <> (decided[i] = decided[j] ))
================================================================
