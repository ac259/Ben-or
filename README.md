# Ben-Or’s Randomized Consensus Algorithm 

## Algorithm
This algorithm works under the assumption that a majority of processes are correct (i.e., n > 2f). It is easy to see
that this requirement is necessary for any algorithm that solves Consensus in asynchronous systems
with crash failures, even if all processes have access to a random number generator i.e [1,1,1,0] 
would give a majority of 1 whereas [0,0,1,1] would not yeild a majority and would go try to get a majority the next round after random flip of bit.
