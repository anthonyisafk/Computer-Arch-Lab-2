BASH = bash
READ = ./read_results.sh

default: all

.PHONY: clean

specbzip:
	$(BASH) $(READ) specbzip_values.ini

specmcf:
	$(BASH) $(READ) specmcf_values.ini

spechmmer:
	$(BASH) $(READ) spechmmer_values.ini

specsjeng:
	$(BASH) $(READ) specsjeng_values.ini

speclibm:
	$(BASH) $(READ) speclibm_values.ini

all: specbzip specmcf spechmmer specsjeng speclibm

clean:
	rm specbzip_results.txt specmcf_results.txt spechmmer_results.txt specsjeng_results.txt speclibm_results.txt
	


