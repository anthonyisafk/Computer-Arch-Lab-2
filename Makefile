ARM = ./build/ARM/gem5.opt
D = -d
SE = configs/example/se.py
TYPE = --cpu-type=MinorCPU
CACHES = --caches
L2 = --l2cache
C = -c
O = -o
LLISIZE = --lli_size
LLDSIZE = --lld_size
L2SIZE = --l2_size
LLIASSOC = --lli_assoc
LLDASSOC = --lld_assoc
L2ASSOC = --l2_assoc
CACHELINE = --cacheline_size
CLOCK = --cpu-clock
INSTRUCTIONS = -I 100000000

# First round, using default parameters.
spebzip_1:
	$(ARM) $(D) spec_results/specbzip_1 $(SE) $(TYPE) $(CACHES) $(L2) $(C) spec_cpu2006/401.bzip2/src/specbzip $(O) "spec_cpu2006/401.bzip2/data/input.program 10" $(INSTRUCTIONS)

specmcf_1:
	$(ARM) $(D) spec_results/specmcf_1 $(SE) $(TYPE) $(CACHES) $(L2) $(C) spec_cpu2006/429.mcf/src/specmcf $(O) "spec_cpu2006/429.mcf/data/inp.in" $(INSTRUCTIONS)

spechmmer_1:
	$(ARM) $(D) spec_results/spechmmer_1 $(SE) $(TYPE) $(CACHES) $(L2) $(C) spec_cpu2006/456.hmmer/src/spechmmer $(O) "--fixed 0 --mean 325 --num 45000 --sd 200 --seed 0 spec_cpu2006/456.hmmer/data/bombesin.hmm" $(INSTRUCTIONS)

specsjeng_1:
	$(ARM) $(D) spec_results/specsjeng_1 $(SE) $(TYPE) $(CACHES) $(L2) $(C) spec_cpu2006/458.sjeng/src/specsjeng $(O) "spec_cpu2006/458.sjeng/data/test.txt" $(INSTRUCTIONS)

speclibm_1:
	$(ARM) $(D) spec_results/speclibm_1 $(SE) $(TYPE) $(CACHES) $(L2) $(C) spec_cpu2006/470.lbm/src/speclibm $(O) "20 spec_cpu2006/470.lbm/data/lbm.in 0 1 spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" $(INSTRUCTIONS)


# Every test round from now on uses different values for caches and CPU clock.
spebzip_2:
	$(ARM) $(D) spec_results/specbzip_2 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/401.bzip2/src/specbzip $(O) "spec_cpu2006/401.bzip2/data/input.program 10" $(INSTRUCTIONS)

specmcf_2:
	$(ARM) $(D) spec_results/specmcf_2 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/429.mcf/src/specmcf $(O) "spec_cpu2006/429.mcf/data/inp.in" $(INSTRUCTIONS)

spechmmer_2:
	$(ARM) $(D) spec_results/spechmmer_2 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/456.hmmer/src/spechmmer $(O) "--fixed 0 --mean 325 --num 45000 --sd 200 --seed 0 spec_cpu2006/456.hmmer/data/bombesin.hmm" $(INSTRUCTIONS)

specsjeng_2:
	$(ARM) $(D) spec_results/specsjeng_2 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/458.sjeng/src/specsjeng $(O) "spec_cpu2006/458.sjeng/data/test.txt" $(INSTRUCTIONS)

speclibm_2:
	$(ARM) $(D) spec_results/speclibm_2 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/470.lbm/src/speclibm $(O) "20 spec_cpu2006/470.lbm/data/lbm.in 0 1 spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" $(INSTRUCTIONS)


spebzip_3:
	$(ARM) $(D) spec_results/specbzip_3 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/401.bzip2/src/specbzip $(O) "spec_cpu2006/401.bzip2/data/input.program 10" $(INSTRUCTIONS)

specmcf_3:
	$(ARM) $(D) spec_results/specmcf_3 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/429.mcf/src/specmcf $(O) "spec_cpu2006/429.mcf/data/inp.in" $(INSTRUCTIONS)

spechmmer_3:
	$(ARM) $(D) spec_results/spechmmer_3 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/456.hmmer/src/spechmmer $(O) "--fixed 0 --mean 325 --num 45000 --sd 200 --seed 0 spec_cpu2006/456.hmmer/data/bombesin.hmm" $(INSTRUCTIONS)

specsjeng_3:
	$(ARM) $(D) spec_results/specsjeng_3 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/458.sjeng/src/specsjeng $(O) "spec_cpu2006/458.sjeng/data/test.txt" $(INSTRUCTIONS)

speclibm_3:
	$(ARM) $(D) spec_results/speclibm_3 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/470.lbm/src/speclibm $(O) "20 spec_cpu2006/470.lbm/data/lbm.in 0 1 spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" $(INSTRUCTIONS)


spebzip_4:
	$(ARM) $(D) spec_results/specbzip_4 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/401.bzip2/src/specbzip $(O) "spec_cpu2006/401.bzip2/data/input.program 10" $(INSTRUCTIONS)

specmcf_4:
	$(ARM) $(D) spec_results/specmcf_4 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/429.mcf/src/specmcf $(O) "spec_cpu2006/429.mcf/data/inp.in" $(INSTRUCTIONS)

spechmmer_4:
	$(ARM) $(D) spec_results/spechmmer_4 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/456.hmmer/src/spechmmer $(O) "--fixed 0 --mean 325 --num 45000 --sd 200 --seed 0 spec_cpu2006/456.hmmer/data/bombesin.hmm" $(INSTRUCTIONS)

specsjeng_4:
	$(ARM) $(D) spec_results/specsjeng_4 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/458.sjeng/src/specsjeng $(O) "spec_cpu2006/458.sjeng/data/test.txt" $(INSTRUCTIONS)

speclibm_4:
	$(ARM) $(D) spec_results/speclibm_4 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/470.lbm/src/speclibm $(O) "20 spec_cpu2006/470.lbm/data/lbm.in 0 1 spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" $(INSTRUCTIONS)


spebzip_5:
	$(ARM) $(D) spec_results/specbzip_5 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/401.bzip2/src/specbzip $(O) "spec_cpu2006/401.bzip2/data/input.program 10" $(INSTRUCTIONS)

specmcf_5:
	$(ARM) $(D) spec_results/specmcf_5 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/429.mcf/src/specmcf $(O) "spec_cpu2006/429.mcf/data/inp.in" $(INSTRUCTIONS)

spechmmer_5:
	$(ARM) $(D) spec_results/spechmmer_5 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/456.hmmer/src/spechmmer $(O) "--fixed 0 --mean 325 --num 45000 --sd 200 --seed 0 spec_cpu2006/456.hmmer/data/bombesin.hmm" $(INSTRUCTIONS)

specsjeng_5:
	$(ARM) $(D) spec_results/specsjeng_5 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/458.sjeng/src/specsjeng $(O) "spec_cpu2006/458.sjeng/data/test.txt" $(INSTRUCTIONS)

speclibm_5:
	$(ARM) $(D) spec_results/speclibm_5 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/470.lbm/src/speclibm $(O) "20 spec_cpu2006/470.lbm/data/lbm.in 0 1 spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" $(INSTRUCTIONS)


spebzip_6:
	$(ARM) $(D) spec_results/specbzip_6 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/401.bzip2/src/specbzip $(O) "spec_cpu2006/401.bzip2/data/input.program 10" $(INSTRUCTIONS)

specmcf_6:
	$(ARM) $(D) spec_results/specmcf_6 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/429.mcf/src/specmcf $(O) "spec_cpu2006/429.mcf/data/inp.in" $(INSTRUCTIONS)

spechmmer_6:
	$(ARM) $(D) spec_results/spechmmer_6 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/456.hmmer/src/spechmmer $(O) "--fixed 0 --mean 325 --num 45000 --sd 200 --seed 0 spec_cpu2006/456.hmmer/data/bombesin.hmm" $(INSTRUCTIONS)

specsjeng_6:
	$(ARM) $(D) spec_results/specsjeng_6 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/458.sjeng/src/specsjeng $(O) "spec_cpu2006/458.sjeng/data/test.txt" $(INSTRUCTIONS)

speclibm_6:
	$(ARM) $(D) spec_results/speclibm_6 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/470.lbm/src/speclibm $(O) "20 spec_cpu2006/470.lbm/data/lbm.in 0 1 spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" $(INSTRUCTIONS)


spebzip_7:
	$(ARM) $(D) spec_results/specbzip_7 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/401.bzip2/src/specbzip $(O) "spec_cpu2006/401.bzip2/data/input.program 10" $(INSTRUCTIONS)

specmcf_7:
	$(ARM) $(D) spec_results/specmcf_7 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/429.mcf/src/specmcf $(O) "spec_cpu2006/429.mcf/data/inp.in" $(INSTRUCTIONS)

spechmmer_7:
	$(ARM) $(D) spec_results/spechmmer_7 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/456.hmmer/src/spechmmer $(O) "--fixed 0 --mean 325 --num 45000 --sd 200 --seed 0 spec_cpu2006/456.hmmer/data/bombesin.hmm" $(INSTRUCTIONS)

specsjeng_7:
	$(ARM) $(D) spec_results/specsjeng_7 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/458.sjeng/src/specsjeng $(O) "spec_cpu2006/458.sjeng/data/test.txt" $(INSTRUCTIONS)

speclibm_7:
	$(ARM) $(D) spec_results/speclibm_7 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/470.lbm/src/speclibm $(O) "20 spec_cpu2006/470.lbm/data/lbm.in 0 1 spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" $(INSTRUCTIONS)


spebzip_8:
	$(ARM) $(D) spec_results/specbzip_8 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/401.bzip2/src/specbzip $(O) "spec_cpu2006/401.bzip2/data/input.program 10" $(INSTRUCTIONS)

specmcf_8:
	$(ARM) $(D) spec_results/specmcf_8 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/429.mcf/src/specmcf $(O) "spec_cpu2006/429.mcf/data/inp.in" $(INSTRUCTIONS)

spechmmer_8:
	$(ARM) $(D) spec_results/spechmmer_8 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/456.hmmer/src/spechmmer $(O) "--fixed 0 --mean 325 --num 45000 --sd 200 --seed 0 spec_cpu2006/456.hmmer/data/bombesin.hmm" $(INSTRUCTIONS)

specsjeng_8:
	$(ARM) $(D) spec_results/specsjeng_8 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/458.sjeng/src/specsjeng $(O) "spec_cpu2006/458.sjeng/data/test.txt" $(INSTRUCTIONS)

speclibm_8:
	$(ARM) $(D) spec_results/speclibm_8 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/470.lbm/src/speclibm $(O) "20 spec_cpu2006/470.lbm/data/lbm.in 0 1 spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" $(INSTRUCTIONS)


spebzip_9:
	$(ARM) $(D) spec_results/specbzip_9 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/401.bzip2/src/specbzip $(O) "spec_cpu2006/401.bzip2/data/input.program 10" $(INSTRUCTIONS)

specmcf_9:
	$(ARM) $(D) spec_results/specmcf_9 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/429.mcf/src/specmcf $(O) "spec_cpu2006/429.mcf/data/inp.in" $(INSTRUCTIONS)

spechmmer_9:
	$(ARM) $(D) spec_results/spechmmer_9 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/456.hmmer/src/spechmmer $(O) "--fixed 0 --mean 325 --num 45000 --sd 200 --seed 0 spec_cpu2006/456.hmmer/data/bombesin.hmm" $(INSTRUCTIONS)

specsjeng_9:
	$(ARM) $(D) spec_results/specsjeng_9 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/458.sjeng/src/specsjeng $(O) "spec_cpu2006/458.sjeng/data/test.txt" $(INSTRUCTIONS)

speclibm_9:
	$(ARM) $(D) spec_results/speclibm_9 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/470.lbm/src/speclibm $(O) "20 spec_cpu2006/470.lbm/data/lbm.in 0 1 spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" $(INSTRUCTIONS)


spebzip_10:
	$(ARM) $(D) spec_results/specbzip_10 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/401.bzip2/src/specbzip $(O) "spec_cpu2006/401.bzip2/data/input.program 10" $(INSTRUCTIONS)

specmcf_10:
	$(ARM) $(D) spec_results/specmcf_10 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/429.mcf/src/specmcf $(O) "spec_cpu2006/429.mcf/data/inp.in" $(INSTRUCTIONS)

spechmmer_10:
	$(ARM) $(D) spec_results/spechmmer_10 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/456.hmmer/src/spechmmer $(O) "--fixed 0 --mean 325 --num 45000 --sd 200 --seed 0 spec_cpu2006/456.hmmer/data/bombesin.hmm" $(INSTRUCTIONS)

specsjeng_10:
	$(ARM) $(D) spec_results/specsjeng_10 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/458.sjeng/src/specsjeng $(O) "spec_cpu2006/458.sjeng/data/test.txt" $(INSTRUCTIONS)

speclibm_10:
	$(ARM) $(D) spec_results/speclibm_10 $(SE) $(TYPE) $(CLOCK) $(CACHES) $(L2) $(LLISIZE) $(LLDSIZE) $(L2SIZE) $(LLIASSOC) $(LLDASSOC) $(L2ASSOC) $(CACHELINE) $(C) spec_cpu2006/470.lbm/src/speclibm $(O) "20 spec_cpu2006/470.lbm/data/lbm.in 0 1 spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" $(INSTRUCTIONS)


round1: spebzip_1 specmcf_1 spechmmer_1 specsjeng_1 speclibm_1

round2: spebzip_2 specmcf_2 spechmmer_2 specsjeng_2 speclibm_2

round3: spebzip_3 specmcf_3 spechmmer_3 specsjeng_3 speclibm_3

round4: spebzip_4 specmcf_4 spechmmer_4 specsjeng_4 speclibm_4

round5: spebzip_5 specmcf_5 spechmmer_5 specsjeng_5 speclibm_5

round6: spebzip_6 specmcf_6 spechmmer_6 specsjeng_6 speclibm_6

round7: spebzip_7 specmcf_7 spechmmer_7 specsjeng_7 speclibm_7

round8: spebzip_8 specmcf_8 spechmmer_8 specsjeng_8 speclibm_8

round9: spebzip_9 specmcf_9 spechmmer_9 specsjeng_9 speclibm_9

round10: spebzip_10 specmcf_10 spechmmer_10 specsjeng_10 speclibm_10
