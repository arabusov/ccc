#
# bcc Makefile
# $Id$
#

PREFIX ?= ./
LIBPRE=$(PREFIX)

CFLAGS	=-O -g -ggdb
LDFLAGS	= -g -ggdb
BINDIR	=$(PREFIX)/bin
LIBDIR	=$(LIBPRE)/lib/bcc
BCCDEFS	=-DLOCALPREFIX=$(LIBPRE) -DBINDIR=$(BINDIR) -DDEFARCH=0
VERSION ?= $(shell git rev-parse --short HEAD)

BCFLAGS=$(ANSI) $(CFLAGS) $(LDFLAGS) -DVERSION='"$(VERSION)"'

OBJS = bcc-cc1.o codefrag.o debug.o declare.o express.o exptree.o floatop.o \
	function.o gencode.o genloads.o glogcode.o hardop.o input.o label.o \
	loadexp.o longop.o output.o preproc.o preserve.o scan.o softop.o \
	state.o table.o type.o assign.o	

all:	bcc-cc1 cc 

TEST = $(shell ls test/*.i)
TESTO = $(patsubst %.i,%.o, $(TEST))
TESTASM = $(patsubst %.i,%.asm, $(TEST))
test: all $(TESTASM) $(TESTO)
test/%.asm: test/%.i
	-./bcc-cc1 -0 -c $^ &> $@
test/%.o: test/%.i
	./cc -c -o $@ $^

testclean:
	rm -f $(TESTO) $(TESTASM)

install: all
	install -d $(BINDIR)
	install -m 755 bcc $(BINDIR)/bcc
	install -d $(LIBDIR)
	install -m 755 bcc-cc1 $(LIBDIR)/bcc-cc1

cc: bcc.c
	$(CC) $(BCFLAGS) $(BCCDEFS) $^ -o $@

bcc-cc1: $(OBJS)
	$(CC) $(BCCARCH) $(LDFLAGS) $(OBJS) -o bcc-cc1

clean realclean: testclean
	rm -f cc bcc-cc1 bcc.o $(OBJS)

$(OBJS):  bcc.h align.h const.h types.h \
          byteord.h condcode.h gencode.h \
	  input.h label.h os.h output.h \
	  parse.h proto.h reg.h sc.h scan.h \
	  sizes.h table.h type.h

.c.o:
	$(CC) $(BCCARCH) $(CFLAGS) -c $<
