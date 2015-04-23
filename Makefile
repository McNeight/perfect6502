OBJS=perfect6502.o netlist_sim.o
OBJS+=cbmbasic.o runtime.o runtime_init.o plugin.o console.o emu.o
#OBJS+=measure.o
CFLAGS=-std=c11 -Werror -Wall -Wextra -Wpedantic -O2 -D_DEFAULT_SOURCE
CC=clang

all: cbmbasic

cbmbasic: $(OBJS)
	$(CC) -o cbmbasic $(OBJS)

clean:
	rm -f $(OBJS) cbmbasic

