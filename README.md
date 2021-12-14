# Computer-Arch-Lab-2

This is a report regarding the second lab of **Computer Architecture course at the Aristotle University of Thessaloniki**. \

Below exist the answers to the questions put in the context of the second lab exersice, in the order they were given:

#### Part 1 - Running __SPEC CPU2006__ Benchmarks 

In this first part we ran a series of simulations based on the __se.py__ example CPU model with L2 Cache configuration built within gem5. The simulations ended after completing the execution of 100000000 instructions in the following benchmarks:

* specbzip
* specmcf
* spechmmer
* specsjeng
* speclibm

1. After the completion of all five simulations we were able to retrieve the following statistics regarding the simulated memory subsystem:

|               |  committed.Insts | committed.ops   | discarded.ops  | L1.block.replacements | L2.accesses  |
| --------------| ---------------- | --------------- | -------------- | --------------------- | ------------ |
| __specbzip__  | 100000001        | 100196363       | 190645         | 710569                | 712341       |
| __specmcf__   | 100000001        | 109431937       | 690949         | 54452                 | 724390       |
| __spechmmer__ | 100000001        | 101102729       | 974536         | 65718                 | 70563        |
| __specsjeng__ | 100000001        | 184174857       | 4279           | 5262377               | 5264051	     |
| __speclibm__  | 100000001        | 100003637       | 2680	          | 1486955               | 1488538	     |

* Commit is the last step to the execution of an instruction. Some instructions are executed speculatively, due to the existance of branches in the code, to which the processor cannot have the answer soon enough. So, if a mis-prediction of a branch's result occurs, the speculatively executed instructions are being discarded. Therefore, the number of committed instructions the the number of executed instrctions can almost never be the same. 

In the stats.txt file we extracted after the completion of the simulations, we weren't able to find a single statistic that showed the number of the executed instructions in total. We did manage to find though, the number of committed operations, which include micro operations, the the number of the discarded operations. The sum of these two can show us the total number of executed operations.

* The number of L2 accesses was given in the stats.txt file. In case it wasn't, we could easily compute it by adding the overall hits and misses in the L2 cache.

2. We also kept track of a list of statistics during these several simulations of the different benchmarks in order to check how well the system handled each one and to see where there was room for improvement. More specifically:

|               | sim.seconds     |CPI              | dcache.miss.rate   | icache.miss.rate    | L2.miss.rate   |
| --------------| --------------- | --------------- | ------------------ | ------------------- | -------------- |
| __specbzip__  | 0.083982	      | 1.679650	    | 770644	         | 747	               | 200996	        |
| __specmcf__   | 0.064955	      | 1.299095        | 75340	             | 668914              | 39875	        |
| __spechmmer__ | 0.059396	      | 1.187917	    | 71886		         | 3821	               | 5487	        |
| __specsjeng__ | 0.513528	      | 10.270554	    | 10523861	         | 649	               | 5263903	    |
| __speclibm__  | 0.174671	      | 3.493415        | 2975818	         | 558	               | 1488455	    |


We can see the differences in these statistics among the 5 benchmarks more clearly in the following graphs:

(graphs)

3. Next, we ran the same set of bechmarks on a simulated system, which was exactly the same as before, with the only difference being that the *Clock Rate* was __1.5GHz__
instead of __1GHz__ . We were able to change this parameter by adding a *CLOCK* variable in the *MakeFile* (CLOCK = --cpu-clock) and making it equal to 1.5GHz.


We searched in the stats.txt file of both instances for clock information. More Specifically:

* system.clk_domain.clock
* system.cpu_clk_domain.clock

|                             | 1GHz  | 1.5GHz  | 
|-----------------------------|-------|---------|
| system.clk_domain.clock     | 1000  | 1000    |
| system.cpu_clk_domain.clock | 500   | 667     | 

(more)

#### Part 2 - Design Exploration

In this part we ran 9 rounds of simulations of the above mentioned benchmarks. In each round, we changed single or multiple parameters regarding the CPU and the memory subsystem. More specifically, we messed with:

* CPU Clock
* L1 & L2 Associativity
* Cache Line Size
* Data Cache , Instruction Cache and L2 Cache Size

(graphs)

Let's take *specbzip* for example, which had an indicative behaviour as to the most common. As we look at the CPI graph, we can clearly see a massive drop between rounds 3 and 4. The CPI goeas back up again for rounds 6 and 7 and after round 8 we see an even bigger drop. All we did in the fourth round was a change of L1D Cache from 64kb to 128kb and an increase of the cache line size from 32byte to 64byte. These type of changes seemed to affect the CPI more than any other change we made. Increasing the line size also increases the block size, so, in this way, the memory subsystem shows better support of the spatial locallity, which has shown to have a great impact on the system's performance on most types of processes.
/
The size increase of the DCache, on the other hand, is obvious to affect performance positively because the miss rate is greatly reduced.
/
In general, these were the most impactful changes that benefited the performance. 