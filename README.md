# Ben-Or’s Randomized Consensus Algorithm 

## Algorithm
This algorithm works under the assumption that a majority of processes are correct (i.e., n > 2f). It is easy to see
that this requirement is necessary for any algorithm that solves Consensus in asynchronous systems
with crash failures, even if all processes have access to a random number generator i.e [1,1,1,0] 
would give a majority of 1 whereas [0,0,1,1] would not yeild a majority and would go try to get a majority the next round after random flip of bit.

## Properties
```
Agreement == (\A i,j \in Procs: decided[i] # -1 /\ decided[j] # -1 => decided[i] = decided[j])
MinorityReport == (\E j \in Procs: TRUE => (decided[j] = 1) \/ (decided[j] = -1))
Progress == (\E j \in Procs: TRUE => <>(decided[j] # -1 ))
BaitProgress == (\E j \in Procs: TRUE => (decided[j] = -1 ))
```

### Agreement:
We see that agreement is always satisfied, even when N < 5, F < 5, and F > N/2. According to our
invariant property, we don't compare the initial value(-1) as the process has not been decided.

We see that at any given time, no two processes decide differently. In all our testing we observe 
that agreement is held up.  


### Progress:
We see that progress property is always satisfied and the consensus is achieved.  If we give the same 
preference values and vary the number of failures to zero or one for four nodes, the consensus is 
achieved and the program terminates which means that every process have decided a value not equal to
-1. 
This is in Sync with the theoretical assumptions of the algorithm.
When the case is INPUT = <<0,1,1,1>> and there are no failures we see that the program terminates
(Because the majority is present and processes k-lock-1, however, when we allow the number of failures 
as 1, the program doesn't terminate because the majority is not established.


### Bait Progress:


We have defined a Bait Progress property which baits the model checker to find one process which
has decided value as -1. The model checker using this invariant finds an execution where all the nodes 
have a decided value \in {0,1}


*Progress Violates, Bait Progress finds a way.*


Consider example of Input(INPUT) as <<0,0,1,1>>, MaxRounds(r) as 3, Nodes(N) as 4, Failures(F) as 0. 
We see that here clearly there is no majority, the model checker will show a run where progress is 
not achieved and all the decided values are -1. By intuition, this is when the bit flips to the input
itself, that is there are two zeros and two ones.

On the other hand, while checking Bait Progress, We see that the invariant breaks, that is 
The consensus is reached. The model checker presents a run where the bit flips in such a way that it gives
a majority in the next round. Eventually, decided value is k-locked and the consensus is reached.

One particular Trace of consensus of zero is as follows(Key Stages are given below):

After certain executions, at r = <<2,2,2,1>> the third process flips its value to zero. The fourth 
process also flips the bit at r = <<2,2,2,2>>. Thereby creating a majority Process one k-locks zero 
and moves to round 3, consequently, when all the processes reach round 3, the consensus is reached by
decided = <<0,0,0,0>>


### MINORITY Report: 

Minority report is bait progress with consensus zero for a particular test case.

Minority report doesn't break when there are no failures(F=0) which is understandable as there is a
majority. When F = 1 it is possible to get zero as consensus and the model


Minority Rounds.


When we have failures > 0, Interesting observation is that flipping of the bits takes at least 3 rounds 
to achieve zero as the consensus. For failure = 1, we observe this trace.

Intially, Input(INPUT) as <<0,1,1,1>>, MaxRounds(r) as 3, Nodes(N) as 4, Failures(F) as 1.
At r = <<3,2,2,1>> process 1 k-locks value as zero because of random bit flips to zero, which leads to 
the majority in the previous rounds. Therefore, all other processes after reaching round 3 have decided 
value as k-0.
