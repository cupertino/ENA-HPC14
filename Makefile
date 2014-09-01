CC = gcc

# make the build silent. Set this to something else to make it noisy again.
V ?=		false

QUIET=@
ECHO=@echo
ifeq ($(strip $(V)),false)
	QUIET=@
	ECHO=@echo
else
	QUIET=
	ECHO=@\#
endif

default: comp

comp:
	$(QUIET) mkdir -p bin
	$(ECHO) "  CC      bin/ubench_mem_access"
	$(QUIET) $(CC) -O0 -o bin/ubench_mem_access src/ubench_mem_access.c
	$(ECHO) "  CC      bin/ubench_cpu_cu" 
	$(QUIET) $(CC) -O0 -o bin/ubench_cpu_cu src/ubench_cpu_cu.c
	$(ECHO) "  CC      bin/ubench_cpu_alu" 
	$(QUIET) $(CC) -O0 -o bin/ubench_cpu_alu src/ubench_cpu_alu.c
	$(ECHO) "  CC      bin/ubench_cpu_fpu"
	$(QUIET) $(CC) -O0 -o bin/ubench_cpu_fpu src/ubench_cpu_fpu.c
	$(ECHO) "  CC      bin/ubench_cpu_rand"
	$(QUIET) $(CC) -O0 -o bin/ubench_cpu_rand src/ubench_cpu_rand.c

clean:
	rm -rf bin
