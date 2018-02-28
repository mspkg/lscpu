# lscpu Makefile
# Public Domain

CC ?= cc
CFLAGS ?= -g -O2 -Wall
PREFIX ?= /usr
MANDIR ?= ${PREFIX}/share/man

all:
	${CC} ${CFLAGS} ${LDFLAGS} -o lscpu lscpu.c

install:
	test -d ${DESTDIR}${PREFIX}/sbin || mkdir -p ${DESTDIR}${PREFIX}/sbin
	install -pm 755 lscpu ${DESTDIR}${PREFIX}/sbin
	test -d ${DESTDIR}${MANDIR}/man1 || mkdir -p ${DESTDIR}${MANDIR}/man1
	install -pm 444 lscpu.1 ${MANDIR}/man1

clean:
	rm -f lscpu
	rm -rf lscpu.dSYM
