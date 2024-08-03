# Generated automatically from Makefile.in by configure.
# Makefile for bash-2.04, version 2.115
#
# Copyright (C) 1996 Free Software Foundation, Inc.

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111 USA.

# Make sure the first target in the makefile is the right one
all: .made

# Include some boilerplate Gnu makefile definitions.
prefix = /usr/local

exec_prefix = ${prefix}
bindir = ${exec_prefix}/bin
libdir = ${exec_prefix}/lib
infodir = ${prefix}/info
includedir = ${prefix}/include

mandir = ${prefix}/man
manpfx = man

man1ext = 1
man1dir = $(mandir)/$(manpfx)$(man1ext)
man3ext = 3
man3dir = $(mandir)/$(manpfx)$(man3ext)

htmldir = 

topdir = .
BUILD_DIR = /home/ysc/open_sources_code/bash-2.04
srcdir = .
VPATH = .:.


CC = gcc
CC_FOR_BUILD = $(CC)
YACC = bison -y
SHELL = /bin/sh
CP = cp
RM = rm -f
AR = ar
ARFLAGS = cr
RANLIB = ranlib

INSTALL = /bin/install -c
INSTALL_PROGRAM = ${INSTALL}
INSTALL_DATA = ${INSTALL} -m 644
INSTALLMODE= -m 0755
INSTALLMODE2 = -m 0555

TESTSCRIPT = run-all

#If you have purify, and want to use it, uncomment this definition or
# run the make as `make PURIFY=purify'
# or run configure with the --with-purify argument.
PURIFY = 

# Here is a rule for making .o files from .c files that does not
# force the type of the machine (like -M_MACHINE) into the flags.
.c.o:
	$(RM) $@
	$(CC) $(CCFLAGS) -c $<

# The name of this program and some version information.
EXEEXT = 
Program = bash$(EXEEXT)
Version = 2.04
PatchLevel = 0
RELSTATUS = release

Machine = 
OS = 
VENDOR = 
MACHTYPE = 

THIS_SH = $(BUILD_DIR)/$(Program)

# PROFILE_FLAGS is either -pg, to generate profiling info for use
# with gprof, or nothing (the default).
PROFILE_FLAGS= 

# The GNU coding standards don't recognize the possibility that
# other information besides optimization and debugging might be
# passed to cc.  A different name should have been used.
CFLAGS = -g -O2
CPPFLAGS =  -D_LARGEFILE64_SOURCE
LOCAL_CFLAGS = 
DEFS = -DHAVE_CONFIG_H
LOCAL_DEFS = -DSHELL
LOCAL_LIBS = 
LIBS = $(BUILTINS_LIB) $(LIBRARIES) -ldl  
LDFLAGS =   $(STATIC_LD) $(LOCAL_LDFLAGS) $(PROFILE_FLAGS) $(CFLAGS)
STATIC_LD = 
LOCAL_LDFLAGS = 

SYSTEM_FLAGS = -DPROGRAM='"$(Program)"' -DCONF_HOSTTYPE='"$(Machine)"' -DCONF_OSTYPE='"$(OS)"' -DCONF_MACHTYPE='"$(MACHTYPE)"' -DCONF_VENDOR='"$(VENDOR)"'

CCFLAGS	= $(PROFILE_FLAGS) $(SYSTEM_FLAGS) $(LOCAL_DEFS) \
	  $(DEFS) $(LOCAL_CFLAGS) $(CPPFLAGS) $(INCLUDES) $(CFLAGS)

INCLUDES = -I.  -I$(srcdir) -I$(BASHINCDIR) -I$(LIBSRC) -I$(includedir)

GCC_LINT_FLAGS = -ansi -Wall -Wshadow -Wpointer-arith -Wcast-qual \
		 -Wwrite-strings -Werror -Wstrict-prototypes \
		 -Wmissing-prototypes -Wno-implicit
GCC_LINT_CFLAGS = $(CCFLAGS) $(GCC_LINT_FLAGS)

#
# Support libraries
# 

dot = .

LIBSUBDIR = lib
LIBSRC = $(srcdir)/$(LIBSUBDIR)

SUBDIR_INCLUDES = -I.  -I$(topdir) -I$(topdir)/$(LIBSUBDIR) -I$(includedir)

# the bash library
# the library is a mix of functions that the C library does not provide on
# some platforms and general shell utility functions
SH_LIBSRC = $(LIBSRC)/sh
SH_LIBDIR = $(dot)/${LIBSUBDIR}/sh
SH_ABSSRC = ${topdir}/${SH_LIBSRC}

SHLIB_SOURCE = ${SH_LIBSRC}/clktck.c ${SH_LIBSRC}/getcwd.c \
	       ${SH_LIBSRC}/getenv.c ${SH_LIBSRC}/oslib.c \
	       ${SH_LIBSRC}/setlinebuf.c \
	       ${SH_LIBSRC}/strcasecmp.c ${SH_LIBSRC}/strerror.c \
	       ${SH_LIBSRC}/strtod.c ${SH_LIBSRC}/strtol.c \
	       ${SH_LIBSRC}/strtoul.c ${SH_LIBSRC}/vprint.c \
	       ${SH_LIBSRC}/itos.c ${SH_LIBSRC}/rename.c \
	       ${SH_LIBSRC}/zread.c ${SH_LIBSRC}/zwrite.c \
	       ${SH_LIBSRC}/shtty.c ${SH_LIBSRC}/inet_aton.c \
	       ${SH_LIBSRC}/netopen.c ${SH_LIBSRC}/strpbrk.c \
	       ${SH_LIBSRC}/timeval.c ${SH_LIBSRC}/clock.c \
	       ${SH_LIBSRC}/makepath.c

SHLIB_LIB = -lsh
SHLIB_LIBNAME = libsh.a
SHLIB_LIBRARY = ${SH_LIBDIR}/${SHLIB_LIBNAME}
SHLIB_LDFLAGS = -L${SH_LIBDIR}
SHLIB_DEP = ${SHLIB_LIBRARY}

# we assume for now that readline source is being shipped with bash
RL_LIBSRC = $(LIBSRC)/readline
RL_LIBDOC = $(RL_LIBSRC)/doc
RL_LIBDIR = $(dot)/$(LIBSUBDIR)/readline
RL_ABSSRC = ${topdir}/$(RL_LIBDIR)

READLINE_LIB = -lreadline
READLINE_LIBRARY = $(RL_LIBDIR)/libreadline.a
READLINE_LDFLAGS = -L${RL_LIBDIR}
READLINE_DEP = $(READLINE_LIBRARY)

# The source, object and documentation of the GNU Readline library.
READLINE_SOURCE	= $(RL_LIBSRC)/rldefs.h $(RL_LIBSRC)/rlconf.h \
		  $(RL_LIBSRC)/readline.h $(RL_LIBSRC)/tcap.h \
		  $(RL_LIBSRC)/chardefs.h $(RL_LIBSRC)/keymaps.h \
		  $(RL_LIBSRC)/history.h $(RL_LIBSRC)/histlib.h \
		  $(RL_LIBSRC)/posixstat.h $(RL_LIBSRC)/tilde.h \
		  $(RL_LIBSRC)/rlstdc.h ${RL_LIBSRC}/xmalloc.h \
		  $(RL_LIBSRC)/rlshell.h ${RL_LIBSRC}/rlprivate.h \
		  $(RL_LIBSRC)/funmap.c $(RL_LIBSRC)/emacs_keymap.c \
		  $(RL_LIBSRC)/search.c $(RL_LIBSRC)/vi_keymap.c \
		  $(RL_LIBSRC)/keymaps.c $(RL_LIBSRC)/parens.c \
		  $(RL_LIBSRC)/vi_mode.c $(RL_LIBSRC)/callback.c \
		  $(RL_LIBSRC)/readline.c $(RL_LIBSRC)/tilde.c \
		  $(RL_LIBSRC)/rltty.c $(RL_LIBSRC)/complete.c \
		  $(RL_LIBSRC)/bind.c $(RL_LIBSRC)/isearch.c \
		  $(RL_LIBSRC)/display.c $(RL_LIBSRC)/signals.c \
		  $(RL_LIBSRC)/util.c $(RL_LIBSRC)/kill.c \
		  $(RL_LIBSRC)/undo.c $(RL_LIBSRC)/macro.c \
		  $(RL_LIBSRC)/terminal.c $(RL_LIBSRC)/nls.c \
		  $(RL_LIBSRC)/input.c $(RL_LIBSRC)/xmalloc.c \
		  $(RL_LIBSRC)/shell.c $(RL_LIBSRC)/savestring.c \
		  $(RL_LIBSRC)/histexpand.c $(RL_LIBSRC)/history.c \
		  $(RL_LIBSRC)/histsearch.c $(RL_LIBSRC)/histfile.c

READLINE_OBJ	= $(RL_LIBDIR)/readline.o $(RL_LIBDIR)/funmap.o \
		  $(RL_LIBDIR)/parens.o $(RL_LIBDIR)/search.o \
		  $(RL_LIBDIR)/keymaps.o $(RL_LIBDIR)/xmalloc.o \
		  $(RL_LIBDIR)/rltty.o $(RL_LIBDIR)/complete.o \
		  $(RL_LIBDIR)/bind.o $(RL_LIBDIR)/isearch.o \
		  $(RL_LIBDIR)/display.o $(RL_LIBDIR)/signals.o \
		  $(RL_LIBDIR)/tilde.o $(RL_LIBDIR)/util.o \
		  $(RL_LIBDIR)/kill.o $(RL_LIBDIR)/undo.o $(RL_LIBDIR)/nls.o \
		  $(RL_LIBDIR)/macro.o $(RL_LIBDIR)/input.o \
		  $(RL_LIBDIR)/terminal.o $(RL_LIBDIR)/callback.o \
		  $(RL_LIBDIR)/shell.o $(RL_LIBDIR)/savestring.o \
		  $(RL_LIBDIR)/history.o $(RL_LIBDIR)/histexpand.o \
		  $(RL_LIBDIR)/histsearch.o $(RL_LIBDIR)/histfile.o

HIST_LIBSRC = $(LIBSRC)/readline
HIST_LIBDIR = $(dot)/$(LIBSUBDIR)/readline
HIST_ABSSRC = ${topdir}/$(HIST_LIBDIR)

HISTORY_LIB = -lhistory
HISTORY_LIBRARY = $(HIST_LIBDIR)/libhistory.a
HISTORY_LDFLAGS = -L$(HIST_LIBDIR)
HISTORY_DEP = $(HISTORY_LIBRARY)

# The source, object and documentation of the history library.
HISTORY_SOURCE	= $(HIST_LIBSRC)/history.c $(HIST_LIBSRC)/histexpand.c \
		  $(HIST_LIBSRC)/histsearch.c $(HIST_LIBSRC)/histfile.c \
		  $(HIST_LIBSRC)/shell.c \
		  $(HIST_LIBSRC)/history.h $(HIST_LIBSRC)/histlib.h
HISTORY_OBJ	= $(HIST_LIBDIR)/history.o $(HIST_LIBDIR)/histexpand.o \
		  $(HIST_LIBDIR)/histsearch.o $(HIST_LIBDIR)/histfile.o \
		  $(HIST_LIBDIR)/shell.o

# You only need termcap (or curses) if you are linking with GNU Readline.
TERM_LIBSRC = $(LIBSRC)/termcap
TERM_LIBDIR = $(dot)/$(LIBSUBDIR)/termcap
TERM_ABSSRC = ${topdir}/$(TERM_LIBDIR)

TERMCAP_LIB = -ltermcap
TERMCAP_LIBRARY = $(TERM_LIBDIR)/libtermcap.a
TERMCAP_LDFLAGS = -L$(TERM_LIBDIR)
TERMCAP_DEP = 

TERMCAP_SOURCE	= $(TERM_LIBSRC)/termcap.c $(TERM_LIBSRC)/tparam.c
TERMCAP_OBJ	= $(TERM_LIBDIR)/termcap.o $(TERM_LIBDIR)/tparam.o

GLOB_LIBSRC = $(LIBSRC)/glob
GLOB_LIBDIR = $(dot)/$(LIBSUBDIR)/glob
GLOB_ABSSRC = ${topdir}/$(GLOB_LIBDIR)

GLOB_LIB     = -lglob
GLOB_LIBRARY = $(GLOB_LIBDIR)/libglob.a
GLOB_LDFLAGS = -L$(GLOB_LIBDIR)
GLOB_DEP = $(GLOB_LIBRARY)

GLOB_SOURCE = $(GLOB_LIBSRC)/glob.c $(GLOB_LIBSRC)/fnmatch.c \
	      $(GLOB_LIBSRC)/glob.h $(GLOB_LIBSRC)/fnmatch.h
GLOB_OBJ    = $(GLOB_LIBDIR)/glob.o $(GLOB_LIBDIR)/fnmatch.o

# The source, object and documentation for the GNU Tilde library.
TILDE_LIBSRC = $(LIBSRC)/tilde
TILDE_LIBDIR = $(dot)/$(LIBSUBDIR)/tilde
TILDE_ABSSRC = ${topdir}/$(TILDE_LIBDIR)

TILDE_LIB = -ltilde
TILDE_LIBRARY = $(TILDE_LIBDIR)/libtilde.a
TILDE_LDFLAGS = -L$(TILDE_LIBDIR)
TILDE_DEP = $(TILDE_LIBRARY)

TILDE_SOURCE	= $(TILDE_LIBSRC)/tilde.c $(TILDE_LIBSRC)/tilde.h
TILDE_OBJ	= $(TILDE_LIBDIR)/tilde.o

# Our malloc.
MALLOC_TARGET = malloc

# set to alloca.o if we are using the C alloca in lib/malloc
ALLOCA = 

ALLOC_LIBSRC = $(LIBSRC)/malloc
ALLOC_LIBDIR = $(dot)/$(LIBSUBDIR)/malloc
ALLOC_ABSSRC = ${topdir}/$(ALLOC_LIBDIR)

MALLOC_SRC = malloc.c
MALLOC_SOURCE = ${ALLOC_LIBSRC}/${MALLOC_SRC}
MALLOC_CFLAGS = -DRCHECK -Dbotch=programming_error

MALLOC_LIB     = -lmalloc
MALLOC_LIBRARY = $(ALLOC_LIBDIR)/libmalloc.a
MALLOC_LDFLAGS = -L$(ALLOC_LIBDIR)
MALLOC_DEP = $(MALLOC_LIBRARY)

ALLOC_HEADERS = $(ALLOC_LIBSRC)/getpagesize.h

$(MALLOC_LIBRARY):	${MALLOC_SOURCE}
		@(cd $(ALLOC_LIBDIR) && \
		 $(MAKE) $(MFLAGS) \
		 MALLOC_CFLAGS="$(MALLOC_CFLAGS)" ${MALLOC_TARGET} ) || exit 1

BASHINCDIR = ${srcdir}/include
BASHINCFILES =	 $(BASHINCDIR)/posixstat.h $(BASHINCDIR)/ansi_stdlib.h \
		 $(BASHINCDIR)/filecntl.h $(BASHINCDIR)/posixdir.h \
		 $(BASHINCDIR)/memalloc.h $(BASHINCDIR)/stdc.h \
		 $(BASHINCDIR)/posixjmp.h $(BASHINCDIR)/posixwait.h \
		 $(BASHINCDIR)/posixtime.h $(BASHINCDIR)/systimes.h \
		 $(BASHINCDIR)/unionwait.h $(BASHINCDIR)/maxpath.h \
		 $(BASHINCDIR)/shtty.h

LIBRARIES = $(READLINE_LIB) $(HISTORY_LIB) $(TERMCAP_LIB) $(GLOB_LIB) \
	    $(TILDE_LIB) $(MALLOC_LIB) $(SHLIB_LIB) $(LOCAL_LIBS)

LIBDEP = $(READLINE_DEP) $(HISTORY_DEP) $(TERMCAP_DEP) $(GLOB_DEP) \
	 $(TILDE_DEP) $(MALLOC_DEP) $(SHLIB_DEP)

LIBRARY_LDFLAGS = $(READLINE_LDFLAGS) $(HISTORY_LDFLAGS) $(GLOB_LDFLAGS) \
		  $(TILDE_LDFLAGS) $(MALLOC_LDFLAGS) $(SHLIB_LDFLAGS)

#
# The shell itself
#

# The main source code for the Bourne Again SHell.
CSOURCES = shell.c eval.c parse.y general.c make_cmd.c print_cmd.c y.tab.c \
	   dispose_cmd.c execute_cmd.c variables.c $(GLOBC) version.c \
	   expr.c copy_cmd.c flags.c subst.c hashcmd.c hashlib.c mailcheck.c \
	   test.c trap.c alias.c jobs.c nojobs.c $(ALLOC_FILES) braces.c \
	   input.c bashhist.c array.c sig.c pathexp.c \
	   unwind_prot.c siglist.c bashline.c bracecomp.c error.c \
	   list.c stringlib.c locale.c findcmd.c redir.c \
	   pcomplete.c pcomplib.c xmalloc.c

HSOURCES = shell.h flags.h trap.h hashcmd.h hashlib.h jobs.h builtins.h \
	   general.h variables.h config.h $(ALLOC_HEADERS) alias.h \
	   quit.h unwind_prot.h \
	   command.h input.h error.h bashansi.h dispose_cmd.h make_cmd.h \
	   subst.h externs.h siglist.h bashhist.h bashline.h bashtypes.h \
	   array.h sig.h mailcheck.h bashintl.h bashjmp.h ${GRAM_H} \
	   execute_cmd.h parser.h pathexp.h pathnames.h pcomplete.h \
	   $(BASHINCFILES)

SOURCES	 = $(CSOURCES) $(HSOURCES) $(BUILTIN_DEFS)

# header files chosen based on running of configure
SIGNAMES_H = lsignames.h

# object files chosen based on running of configure
JOBS_O = jobs.o

# Matching object files.
OBJECTS	 = shell.o eval.o y.tab.o general.o make_cmd.o print_cmd.o $(GLOBO) \
	   dispose_cmd.o execute_cmd.o variables.o copy_cmd.o error.o \
	   expr.o flags.o $(JOBS_O) subst.o hashcmd.o hashlib.o mailcheck.o \
	   trap.o input.o unwind_prot.o pathexp.o sig.o test.o version.o \
	   alias.o array.o braces.o bracecomp.o bashhist.o bashline.o \
	   siglist.o list.o stringlib.o locale.o findcmd.o redir.o \
	   pcomplete.o pcomplib.o xmalloc.o

# Where the source code of the shell builtins resides.
BUILTIN_SRCDIR=$(srcdir)/builtins
DEFSRC=$(BUILTIN_SRCDIR)
BUILTIN_ABSSRC=${topdir}/builtins
DEFDIR = $(dot)/builtins

BUILTIN_DEFS = $(DEFSRC)/alias.def $(DEFSRC)/bind.def $(DEFSRC)/break.def \
	       $(DEFSRC)/builtin.def $(DEFSRC)/cd.def $(DEFSRC)/colon.def \
	       $(DEFSRC)/command.def ${DEFSRC}/complete.def \
	       $(DEFSRC)/declare.def \
	       $(DEFSRC)/echo.def $(DEFSRC)/enable.def $(DEFSRC)/eval.def \
	       $(DEFSRC)/exec.def $(DEFSRC)/exit.def $(DEFSRC)/fc.def \
	       $(DEFSRC)/fg_bg.def $(DEFSRC)/hash.def $(DEFSRC)/help.def \
	       $(DEFSRC)/history.def $(DEFSRC)/jobs.def $(DEFSRC)/kill.def \
	       $(DEFSRC)/let.def $(DEFSRC)/read.def $(DEFSRC)/return.def \
	       $(DEFSRC)/set.def $(DEFSRC)/setattr.def $(DEFSRC)/shift.def \
	       $(DEFSRC)/source.def $(DEFSRC)/suspend.def $(DEFSRC)/test.def \
	       $(DEFSRC)/times.def $(DEFSRC)/trap.def $(DEFSRC)/type.def \
	       $(DEFSRC)/ulimit.def $(DEFSRC)/umask.def $(DEFSRC)/wait.def \
	       $(DEFSRC)/getopts.def $(DEFSRC)/reserved.def \
	       $(DEFSRC)/pushd.def $(DEFSRC)/shopt.def $(DEFSRC)/printf.def
BUILTIN_C_SRC  = $(DEFSRC)/mkbuiltins.c $(DEFSRC)/common.c \
		 $(DEFSRC)/evalstring.c $(DEFSRC)/evalfile.c \
		 $(DEFSRC)/bashgetopt.c $(GETOPT_SOURCE)
BUILTIN_C_OBJ  = $(DEFDIR)/common.o $(DEFDIR)/evalstring.o \
		 $(DEFDIR)/evalfile.o $(DEFDIR)/bashgetopt.o
BUILTIN_OBJS = $(DEFDIR)/alias.o $(DEFDIR)/bind.o $(DEFDIR)/break.o \
	       $(DEFDIR)/builtin.o $(DEFDIR)/cd.o $(DEFDIR)/colon.o \
	       $(DEFDIR)/command.o $(DEFDIR)/declare.o \
	       $(DEFDIR)/echo.o $(DEFDIR)/enable.o $(DEFDIR)/eval.o \
	       $(DEFDIR)/exec.o $(DEFDIR)/exit.o $(DEFDIR)/fc.o \
	       $(DEFDIR)/fg_bg.o $(DEFDIR)/hash.o $(DEFDIR)/help.o \
	       $(DEFDIR)/history.o $(DEFDIR)/jobs.o $(DEFDIR)/kill.o \
	       $(DEFDIR)/let.o $(DEFDIR)/pushd.o $(DEFDIR)/read.o \
	       $(DEFDIR)/return.o $(DEFDIR)/shopt.o $(DEFDIR)/printf.o \
	       $(DEFDIR)/set.o $(DEFDIR)/setattr.o $(DEFDIR)/shift.o \
	       $(DEFDIR)/source.o $(DEFDIR)/suspend.o $(DEFDIR)/test.o \
	       $(DEFDIR)/times.o $(DEFDIR)/trap.o $(DEFDIR)/type.o \
	       $(DEFDIR)/ulimit.o $(DEFDIR)/umask.o $(DEFDIR)/wait.o \
	       $(DEFDIR)/getopts.o $(BUILTIN_C_OBJ)
GETOPT_SOURCE   = $(DEFSRC)/getopt.c $(DEFSRC)/getopt.h
PSIZE_SOURCE	= $(DEFSRC)/psize.sh $(DEFSRC)/psize.c

BUILTINS_LIBRARY = $(DEFDIR)/libbuiltins.a
BUILTINS_LIB = -lbuiltins
BUILTINS_LDFLAGS = -L$(DEFDIR)
BUILTINS_DEP = $(BUILTINS_LIBRARY)

# Documentation for the shell.
DOCSRC = $(srcdir)/doc
DOCDIR = $(dot)/doc

SIGNAMES_SUPPORT = $(SUPPORT_SRC)mksignames.c

SUPPORT_SRC = $(srcdir)/support/
SDIR = $(dot)/support/

TESTS_SUPPORT = recho$(EXEEXT) zecho$(EXEEXT) printenv$(EXEEXT)
CREATED_SUPPORT = signames.h recho$(EXEEXT) zecho$(EXEEXT) printenv$(EXEEXT) \
		  tests/recho$(EXEEXT) tests/zecho$(EXEEXT) \
		  tests/printenv$(EXEEXT) mksignames$(EXEEXT) lsignames.h
CREATED_CONFIGURE = config.h config.cache config.status config.log \
		    stamp-h
CREATED_MAKEFILES = Makefile builtins/Makefile doc/Makefile \
		    lib/readline/Makefile lib/glob/Makefile \
		    lib/sh/Makefile lib/tilde/Makefile lib/malloc/Makefile \
		    lib/termcap/Makefile examples/loadables/Makefile \
		    examples/loadables/perl/Makefile support/Makefile

# Keep GNU Make from exporting the entire environment for small machines.
.NOEXPORT:

.made: $(Program) bashbug
	@echo "$(Program) last made for a $(Machine) running $(OS)" >.made

$(Program):  .build $(OBJECTS) $(BUILTINS_DEP) $(LIBDEP)
	$(RM) $@
	$(PURIFY) $(CC) $(BUILTINS_LDFLAGS) $(LIBRARY_LDFLAGS) $(LDFLAGS) -o $(Program) $(OBJECTS) $(LIBS)
	ls -l $(Program)
	size $(Program)

.build:	$(SOURCES) config.h Makefile version.h
	@echo
	@echo "	  ***********************************************************"
	@echo "	  *                                                         *"
	@echo "	  * Making Bash-$(Version).$(PatchLevel)-$(RELSTATUS) for a $(Machine) running $(OS)"
	@echo "	  *                                                         *"
	@echo "	  ***********************************************************"
	@echo

bashbug: $(SUPPORT_SRC)bashbug.sh config.h Makefile
	@sed -e "s%!MACHINE!%$(Machine)%" -e "s%!OS!%$(OS)%" \
	     -e "s%!CFLAGS!%$(CCFLAGS)%" -e "s%!CC!%$(CC)%" \
	     -e "s%!RELEASE!%$(Version)%" -e "s%!PATCHLEVEL!%$(PatchLevel)%" \
	     -e "s%!MACHTYPE!%$(MACHTYPE)%" -e "s%!RELSTATUS!%$(RELSTATUS)%" \
	     $(SUPPORT_SRC)bashbug.sh > $@
	@chmod a+rx bashbug

strip:	$(Program) .made
	strip $(Program)
	ls -l $(Program)
	size $(Program)

version.h:  $(SOURCES) config.h Makefile 
	$(SHELL) $(SUPPORT_SRC)mkversion.sh -b -s $(RELSTATUS) -d $(Version) -p $(PatchLevel) -o newversion.h \
		&& mv newversion.h version.h

# old rules
GRAM_H = parser-built
y.tab.o: y.tab.c ${GRAM_H} command.h ${BASHINCDIR}/stdc.h input.h
${GRAM_H}:	y.tab.h
	@-if test -f y.tab.h ; then \
		cmp -s $@ y.tab.h 2>/dev/null || cp -p y.tab.h $@; \
	fi
y.tab.c y.tab.h: parse.y
#	-if test -f y.tab.h; then mv -f y.tab.h old-y.tab.h; fi
	$(YACC) -d $(srcdir)/parse.y
#	-if cmp -s old-y.tab.h y.tab.h; then mv old-y.tab.h y.tab.h; else cp -p y.tab.h ${GRAM_H}; fi

# experimental new rules - work with GNU make but not BSD (or OSF) make
#y.tab.o: y.tab.c y.tab.h
#y.tab.c y.tab.h: parse.y command.h ${BASHINCDIR}/stdc.h input.h
#	-if test -f y.tab.h; then mv -f y.tab.h old-y.tab.h; fi
#	$(YACC) -d $(srcdir)/parse.y
#	-if cmp -s old-y.tab.h y.tab.h; then mv old-y.tab.h y.tab.h; fi

$(READLINE_LIBRARY): config.h $(READLINE_SOURCE)
	@echo making $@ in ${RL_LIBDIR}
	@( { test "${RL_LIBDIR}" = "${libdir}" && exit 0; } || \
		cd ${RL_LIBDIR} && $(MAKE) $(MFLAGS) libreadline.a) || exit 1

$(HISTORY_LIBRARY): config.h $(HISTORY_SOURCE)
	@echo making $@ in ${HIST_LIBDIR}
	@( { test "${HIST_LIBDIR}" = "${libdir}" && exit 0; } || \
		cd ${HIST_LIBDIR} && $(MAKE) $(MFLAGS) libhistory.a) || exit 1

$(GLOB_LIBRARY): config.h $(GLOB_SOURCE)
	@echo making $@ in ${GLOB_LIBDIR}
	@(cd ${GLOB_LIBDIR} && \
		$(MAKE) $(MFLAGS) libglob.a) || exit 1

$(TILDE_LIBRARY): config.h $(TILDE_SOURCE)
	@echo making $@ in ${TILDE_LIBDIR}
	@(cd ${TILDE_LIBDIR} && \
		$(MAKE) $(MFLAGS) libtilde.a) || exit 1

$(TERMCAP_LIBRARY): config.h ${TERMCAP_SOURCE}
	@echo making $@ in ${TERM_LIBDIR}	
	@(cd ${TERM_LIBDIR} && \
		$(MAKE) $(MFLAGS) libtermcap.a) || exit 1

$(SHLIB_LIBRARY): config.h ${SHLIB_SOURCE}
	@echo making $@ in ${SH_LIBDIR}
	@(cd ${SH_LIBDIR} && \
		$(MAKE) $(MFLAGS) ${SHLIB_LIBNAME}) || exit 1

mksignames$(EXEEXT):	$(SUPPORT_SRC)mksignames.c
	$(CC_FOR_BUILD) $(CCFLAGS) $(CPPFLAGS) -o $@ $(SUPPORT_SRC)mksignames.c

# make a list of signals for the local system -- this is done when we're
# *not* cross-compiling
lsignames.h:   mksignames$(EXEEXT)
	$(RM) $@
	./mksignames $@

# copy the correct signames header file to signames.h
signames.h: $(SIGNAMES_H)
	-if cmp -s $(SIGNAMES_H) $@ ; then :; else $(RM) $@ ; $(CP) $(SIGNAMES_H) $@ ; fi

$(BUILTINS_LIBRARY): $(BUILTIN_DEFS) $(BUILTIN_C_SRC) config.h ${BASHINCDIR}/memalloc.h
	@(cd $(DEFDIR) && $(MAKE) $(MFLAGS) libbuiltins.a ) || exit 1

# these require special rules to circumvent make builtin rules
${DEFDIR}/common.o:	$(BUILTIN_SRCDIR)/common.c
	@(cd $(DEFDIR) && $(MAKE) $(MFLAGS) common.o) || exit 1

${DEFDIR}/bashgetopt.o:	$(BUILTIN_SRCDIR)/bashgetopt.c
	@(cd $(DEFDIR) && $(MAKE) $(MFLAGS) bashgetopt.o) || exit 1

${DEFDIR}/builtext.h: $(BUILTIN_DEFS)
	@(cd $(DEFDIR) && $(MAKE) $(MFLAGS) builtext.h ) || exit 1

# For the justification of the following Makefile rules, see node
# `Automatic Remaking' in GNU Autoconf documentation.

Makefile makefile:	config.status $(srcdir)/Makefile.in
	CONFIG_FILES=Makefile CONFIG_HEADERS= $(SHELL) ./config.status

Makefiles makefiles:	config.status $(srcdir)/Makefile.in
	@for mf in $(CREATED_MAKEFILES); do \
		CONFIG_FILES=$$mf CONFIG_HEADERS= $(SHELL) ./config.status ; \
	done

config.h:	stamp-h 

stamp-h:	config.status $(srcdir)/config.h.in $(srcdir)/config-top.h $(srcdir)/config-bot.h
	CONFIG_FILES= CONFIG_HEADERS=config.h $(SHELL) ./config.status

config.status:	$(srcdir)/configure
	$(SHELL) ./config.status --recheck

# comment out for distribution
$(srcdir)/configure:	$(srcdir)/configure.in $(srcdir)/aclocal.m4 $(srcdir)/config.h.in
	cd $(srcdir) && autoconf

# for chet
reconfig: force
	sh $(srcdir)/configure

#newversion:	mkversion
#	$(RM) .build
#	./mkversion -dir $(srcdir) -dist
#	mv -f newversion.h version.h
#	$(MAKE) -f $(srcdir)/Makefile $(MFLAGS) srcdir=$(srcdir)

doc documentation:  force
	@(cd $(DOCDIR) ; $(MAKE) $(MFLAGS) )

info dvi ps: force
	@(cd $(DOCDIR) ; $(MAKE) $(MFLAGS) CFLAGS='$(CCFLAGS)' $@ )

force:

tags:	$(SOURCES) $(BUILTIN_C_SRC) $(LIBRARY_SOURCE)
	etags $(SOURCES) $(BUILTIN_C_SRC) $(LIBRARY_SOURCE)

TAGS:	$(SOURCES) $(BUILTIN_C_SRC) $(LIBRARY_SOURCE)
	ctags -x $(SOURCES) $(BUILTIN_C_SRC) $(LIBRARY_SOURCE) > $@

# Targets that actually do things not part of the build

installdirs:
	@${SHELL} $(SUPPORT_SRC)mkdirs $(bindir)
	@${SHELL} $(SUPPORT_SRC)mkdirs $(man1dir) $(man3dir)
	@${SHELL} $(SUPPORT_SRC)mkdirs $(infodir)

install:	.made installdirs
	$(INSTALL_PROGRAM) $(INSTALLMODE) $(Program) $(bindir)/$(Program)
	$(INSTALL_PROGRAM) $(INSTALLMODE2) bashbug $(bindir)/bashbug
	-( cd $(DOCDIR) ; $(MAKE) $(MFLAGS) \
		man1dir=$(man1dir) man1ext=$(man1ext) \
		man3dir=$(man3dir) man3ext=$(man3ext) \
		infodir=$(infodir) htmldir=$(htmldir) $@ )

install-strip:
	$(MAKE) $(MFLAGS) INSTALL_PROGRAM='$(INSTALL_PROGRAM) -s' \
		prefix=${prefix} exec_prefix=${exec_prefix} install

uninstall:	.made
	$(RM) $(bindir)/$(Program) $(bindir)/bashbug
	-( cd $(DOCDIR) ; $(MAKE) $(MFLAGS) \
		man1dir=$(man1dir) man1ext=$(man1ext) \
		man3dir=$(man3dir) man3ext=$(man3ext) \
		infodir=$(infodir) $@ )

.PHONY: basic-clean clean realclean maintainer-clean distclean mostlyclean
basic-clean:
	$(RM) $(OBJECTS) $(Program) bashbug
	$(RM) .build .made version.h

clean:	basic-clean
	( cd $(DOCDIR) && $(MAKE) $(MFLAGS) $@ )
	( cd builtins && $(MAKE) $(MFLAGS) $@ )
	-(cd $(RL_LIBDIR) && $(MAKE) $(MFLAGS) $@)
	-(cd $(HIST_LIBDIR) && test -f Makefile && $(MAKE) $(MFLAGS) $@)
	-(cd $(TERM_LIBDIR) && $(MAKE) $(MFLAGS) $@)
	-(cd $(GLOB_LIBDIR) && $(MAKE) $(MFLAGS) $@)
	-(cd $(TILDE_LIBDIR) && $(MAKE) $(MFLAGS) $@)
	-(cd $(ALLOC_LIBDIR) && $(MAKE) $(MFLAGS) $@)
	-(cd $(SH_LIBDIR) && $(MAKE) $(MFLAGS) $@)
	$(RM) $(CREATED_SUPPORT)

mostlyclean: basic-clean
	( cd $(DOCDIR) && $(MAKE) $(MFLAGS) $@ )
	( cd builtins && $(MAKE) $(MFLAGS) $@ )
	-(cd $(RL_LIBDIR) && $(MAKE) $(MFLAGS) $@)
	-(cd $(HIST_LIBDIR) && test -f Makefile && $(MAKE) $(MFLAGS) $@)
	-(cd $(TERM_LIBDIR) && $(MAKE) $(MFLAGS) $@)
	-(cd $(GLOB_LIBDIR) && $(MAKE) $(MFLAGS) $@)
	-(cd $(TILDE_LIBDIR) && $(MAKE) $(MFLAGS) $@)
	-(cd $(ALLOC_LIBDIR) && $(MAKE) $(MFLAGS) $@)
	-(cd $(SH_LIBDIR) && $(MAKE) $(MFLAGS) $@)

distclean:	basic-clean
	( cd $(DOCDIR) && $(MAKE) $(MFLAGS) $@ )
	( cd builtins && $(MAKE) $(MFLAGS) $@ )
	-(cd $(RL_LIBDIR) && $(MAKE) $(MFLAGS) $@)
	-(cd $(HIST_LIBDIR) && test -f Makefile && $(MAKE) $(MFLAGS) $@)
	-(cd $(TERM_LIBDIR) && $(MAKE) $(MFLAGS) $@)
	-(cd $(GLOB_LIBDIR) && $(MAKE) $(MFLAGS) $@)
	-(cd $(TILDE_LIBDIR) && $(MAKE) $(MFLAGS) $@)
	-(cd $(ALLOC_LIBDIR) && $(MAKE) $(MFLAGS) $@)
	-(cd $(SH_LIBDIR) && $(MAKE) $(MFLAGS) $@)
	$(RM) $(CREATED_CONFIGURE) tags TAGS 
	$(RM) $(CREATED_SUPPORT) Makefile $(CREATED_MAKEFILES)

maintainer-clean:	basic-clean
	@echo This command is intended for maintainers to use.
	@echo It deletes files that may require special tools to rebuild.
	$(RM) y.tab.c y.tab.h parser-built.h tags TAGS
	( cd $(DOCDIR) && $(MAKE) $(MFLAGS) $@ )
	( cd builtins && $(MAKE) $(MFLAGS) $@ )
	-(cd $(RL_LIBDIR) && $(MAKE) $(MFLAGS) $@)
	-(cd $(HIST_LIBDIR) && test -f Makefile && $(MAKE) $(MFLAGS) $@)
	-(cd $(TERM_LIBDIR) && $(MAKE) $(MFLAGS) $@)
	-(cd $(GLOB_LIBDIR) && $(MAKE) $(MFLAGS) $@)
	-(cd $(TILDE_LIBDIR) && $(MAKE) $(MFLAGS) $@)
	-(cd $(ALLOC_LIBDIR) && $(MAKE) $(MFLAGS) $@)
	-(cd $(SH_LIBDIR) && $(MAKE) $(MFLAGS) $@)
	$(RM) $(CREATED_CONFIGURE) $(CREATED_MAKEFILES)
	$(RM) $(CREATED_SUPPORT) Makefile

recho$(EXEEXT):		$(SUPPORT_SRC)recho.c
	@$(CC) $(CCFLAGS) -o $@ $(SUPPORT_SRC)recho.c

zecho$(EXEEXT):		$(SUPPORT_SRC)zecho.c
	@$(CC) $(CCFLAGS) -o $@ $(SUPPORT_SRC)zecho.c

printenv$(EXEEXT):	$(SUPPORT_SRC)printenv.c
	@$(CC) $(CCFLAGS) -o $@ $(SUPPORT_SRC)printenv.c

test tests check:		force $(Program) $(TESTS_SUPPORT)
	@-test -d tests || mkdir tests
	@cp $(TESTS_SUPPORT) tests
	@( cd $(srcdir)/tests && \
		PATH=$$PATH:$(BUILD_DIR)/tests THIS_SH=$(THIS_SH) $(SHELL) ${TESTSCRIPT} )

symlinks:
	$(SHELL) $(SUPPORT_SRC)fixlinks -s $(srcdir)

dist:	force
	@echo Bash distributions are created using $(srcdir)/support/mkdist.
	@echo Here is a sample of the necessary commands:
	@echo $(Program) $(srcdir)/support/mkdist -m $(srcdir)/MANIFEST -s $(srcdir) -r ${Program} $(Version)-${RELSTATUS}
	@echo tar cf $(Program)-$(Version)-${RELSTATUS}.tar ${Program}-$(Version)-${RELSTATUS}
	@echo gzip $(Program)-$(Version)-${RELSTATUS}.tar

depend:	depends

depends: force
	$(Program) $(SUPPORT_SRC)mkdep -c ${CC} -- ${CCFLAGS} ${CSOURCES}

############################ DEPENDENCIES ###############################

# Files that depend on the definitions in config-top.h, which are not meant
# to be changed
shell.o: config-top.h
input.o: config-top.h
y.tab.o: config-top.h
jobs.o: config-top.h
nojobs.o: config-top.h
execute_cmd.o: config-top.h
variables.o: config-top.h
builtins/command.o: config-top.h
builtins/common.o: config-top.h
builtins/break.o: config-top.h
builtins/echo.o: config-top.h
builtins/evalstring.o: config-top.h
builtins/exit.o: config-top.h
builtins/kill.o: config-top.h

# shell basics
copy_cmd.o: shell.h config.h bashjmp.h ${BASHINCDIR}/posixjmp.h command.h ${BASHINCDIR}/stdc.h error.h
copy_cmd.o: general.h bashtypes.h variables.h array.h hashlib.h
copy_cmd.o: quit.h ${BASHINCDIR}/maxpath.h unwind_prot.h dispose_cmd.h
copy_cmd.o: make_cmd.h subst.h sig.h pathnames.h externs.h
dispose_cmd.o: bashansi.h ${BASHINCDIR}/ansi_stdlib.h
dispose_cmd.o: shell.h config.h bashjmp.h ${BASHINCDIR}/posixjmp.h command.h ${BASHINCDIR}/stdc.h
dispose_cmd.o: error.h general.h bashtypes.h variables.h array.h hashlib.h
dispose_cmd.o: quit.h ${BASHINCDIR}/maxpath.h unwind_prot.h dispose_cmd.h
dispose_cmd.o: make_cmd.h subst.h sig.h pathnames.h externs.h
error.o: config.h bashtypes.h bashansi.h ${BASHINCDIR}/ansi_stdlib.h flags.h ${BASHINCDIR}/stdc.h error.h
error.o: command.h general.h externs.h input.h bashhist.h
eval.o: config.h bashansi.h ${BASHINCDIR}/ansi_stdlib.h trap.h flags.h ${DEFSRC}/common.h
eval.o: shell.h config.h bashjmp.h ${BASHINCDIR}/posixjmp.h command.h ${BASHINCDIR}/stdc.h error.h
eval.o: general.h bashtypes.h variables.h array.h hashlib.h
eval.o: quit.h ${BASHINCDIR}/maxpath.h unwind_prot.h dispose_cmd.h
eval.o: make_cmd.h subst.h sig.h pathnames.h externs.h
eval.o: input.h execute_cmd.h
execute_cmd.o: config.h bashtypes.h ${BASHINCDIR}/filecntl.h ${BASHINCDIR}/posixstat.h bashansi.h ${BASHINCDIR}/ansi_stdlib.h
execute_cmd.o: shell.h config.h bashjmp.h ${BASHINCDIR}/posixjmp.h command.h ${BASHINCDIR}/stdc.h error.h
execute_cmd.o: general.h bashtypes.h variables.h array.h hashlib.h
execute_cmd.o: quit.h ${BASHINCDIR}/maxpath.h unwind_prot.h dispose_cmd.h
execute_cmd.o: make_cmd.h subst.h sig.h pathnames.h externs.h
execute_cmd.o: ${BASHINCDIR}/memalloc.h ${GRAM_H} flags.h builtins.h jobs.h quit.h siglist.h
execute_cmd.o: execute_cmd.h findcmd.h redir.h trap.h test.h pathexp.h
execute_cmd.o: $(DEFSRC)/common.h ${DEFDIR}/builtext.h ${GLOB_LIBSRC}/fnmatch.h
execute_cmd.o: ${BASHINCDIR}/posixtime.h
expr.o: config.h bashansi.h ${BASHINCDIR}/ansi_stdlib.h
expr.o: shell.h config.h bashjmp.h ${BASHINCDIR}/posixjmp.h command.h ${BASHINCDIR}/stdc.h error.h
expr.o: general.h bashtypes.h variables.h array.h hashlib.h
expr.o: quit.h ${BASHINCDIR}/maxpath.h unwind_prot.h dispose_cmd.h
expr.o: make_cmd.h subst.h sig.h pathnames.h externs.h
findcmd.o: config.h bashtypes.h ${BASHINCDIR}/filecntl.h ${BASHINCDIR}/posixstat.h bashansi.h
findcmd.o: ${BASHINCDIR}/ansi_stdlib.h ${BASHINCDIR}/memalloc.h shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h command.h
findcmd.o: ${BASHINCDIR}/stdc.h error.h general.h variables.h quit.h ${BASHINCDIR}/maxpath.h unwind_prot.h
findcmd.o: dispose_cmd.h make_cmd.h subst.h sig.h pathnames.h externs.h
findcmd.o: flags.h hashlib.h pathexp.h hashcmd.h 
flags.o: config.h flags.h
flags.o: shell.h config.h bashjmp.h ${BASHINCDIR}/posixjmp.h command.h ${BASHINCDIR}/stdc.h error.h
flags.o: general.h bashtypes.h variables.h array.h hashlib.h
flags.o: quit.h ${BASHINCDIR}/maxpath.h unwind_prot.h dispose_cmd.h
flags.o: make_cmd.h subst.h sig.h pathnames.h externs.h
general.o: config.h bashtypes.h ${BASHINCDIR}/posixstat.h ${BASHINCDIR}/filecntl.h bashansi.h ${BASHINCDIR}/ansi_stdlib.h
general.o: shell.h config.h bashjmp.h ${BASHINCDIR}/posixjmp.h command.h ${BASHINCDIR}/stdc.h error.h
general.o: general.h bashtypes.h variables.h array.h hashlib.h
general.o: quit.h ${BASHINCDIR}/maxpath.h unwind_prot.h dispose_cmd.h
general.o: make_cmd.h subst.h sig.h pathnames.h externs.h
general.o: ${BASHINCDIR}/maxpath.h ${BASHINCDIR}/posixtime.h
hashcmd.o: config.h ${BASHINCDIR}/posixstat.h bashtypes.h bashansi.h ${BASHINCDIR}/ansi_stdlib.h
hashcmd.o: shell.h config.h bashjmp.h ${BASHINCDIR}/posixjmp.h command.h ${BASHINCDIR}/stdc.h error.h
hashcmd.o: general.h bashtypes.h variables.h array.h hashcmd.h
hashcmd.o: execute_cmd.h findcmd.h ${BASHINCDIR}/stdc.h
hashlib.o: config.h bashansi.h ${BASHINCDIR}/ansi_stdlib.h
hashlib.o: shell.h config.h bashjmp.h ${BASHINCDIR}/posixjmp.h command.h ${BASHINCDIR}/stdc.h error.h
hashlib.o: general.h bashtypes.h variables.h array.h hashlib.h
hashlib.o: quit.h ${BASHINCDIR}/maxpath.h unwind_prot.h dispose_cmd.h
hashlib.o: make_cmd.h subst.h sig.h pathnames.h externs.h
input.o: config.h bashtypes.h ${BASHINCDIR}/filecntl.h ${BASHINCDIR}/posixstat.h bashansi.h ${BASHINCDIR}/ansi_stdlib.h
input.o: command.h ${BASHINCDIR}/stdc.h general.h input.h error.h externs.h
list.o: shell.h config.h bashjmp.h ${BASHINCDIR}/posixjmp.h command.h ${BASHINCDIR}/stdc.h error.h
list.o: general.h bashtypes.h variables.h array.h hashlib.h
list.o: quit.h ${BASHINCDIR}/maxpath.h unwind_prot.h dispose_cmd.h
list.o: make_cmd.h subst.h sig.h pathnames.h externs.h
locale.o: config.h bashtypes.h bashintl.h bashansi.h ${BASHINCDIR}/ansi_stdlib.h
locale.o: shell.h config.h bashjmp.h ${BASHINCDIR}/posixjmp.h command.h ${BASHINCDIR}/stdc.h error.h
locale.o: general.h bashtypes.h variables.h array.h hashlib.h
locale.o: quit.h ${BASHINCDIR}/maxpath.h unwind_prot.h dispose_cmd.h
locale.o: make_cmd.h subst.h sig.h pathnames.h externs.h
mailcheck.o: config.h bashtypes.h ${BASHINCDIR}/posixstat.h bashansi.h ${BASHINCDIR}/ansi_stdlib.h
mailcheck.o: shell.h config.h bashjmp.h ${BASHINCDIR}/posixjmp.h command.h ${BASHINCDIR}/stdc.h error.h
mailcheck.o: general.h bashtypes.h variables.h array.h hashlib.h
mailcheck.o: quit.h ${BASHINCDIR}/maxpath.h unwind_prot.h dispose_cmd.h
mailcheck.o: make_cmd.h subst.h sig.h pathnames.h externs.h
mailcheck.o: execute_cmd.h mailcheck.h
make_cmd.o: config.h bashtypes.h ${BASHINCDIR}/filecntl.h bashansi.h
make_cmd.o: command.h ${BASHINCDIR}/stdc.h general.h error.h flags.h make_cmd.h
make_cmd.o: variables.h array.h hashlib.h subst.h input.h externs.h
make_cmd.o: jobs.h quit.h siglist.h
y.tab.o: config.h bashtypes.h bashansi.h ${BASHINCDIR}/ansi_stdlib.h ${BASHINCDIR}/memalloc.h
y.tab.o: shell.h config.h bashjmp.h ${BASHINCDIR}/posixjmp.h command.h ${BASHINCDIR}/stdc.h error.h
y.tab.o: general.h bashtypes.h variables.h array.h hashlib.h
y.tab.o: quit.h ${BASHINCDIR}/maxpath.h unwind_prot.h dispose_cmd.h
y.tab.o: make_cmd.h subst.h sig.h pathnames.h externs.h
y.tab.o: trap.h flags.h parser.h input.h mailcheck.h $(DEFSRC)/common.h
y.tab.o: $(DEFDIR)/builtext.h bashline.h bashhist.h jobs.h siglist.h alias.h
pathexp.o: config.h bashtypes.h bashansi.h ${BASHINCDIR}/ansi_stdlib.h
pathexp.o: shell.h config.h bashjmp.h ${BASHINCDIR}/posixjmp.h command.h ${BASHINCDIR}/stdc.h error.h
pathexp.o: general.h bashtypes.h variables.h array.h hashlib.h
pathexp.o: quit.h ${BASHINCDIR}/maxpath.h unwind_prot.h dispose_cmd.h
pathexp.o: make_cmd.h subst.h sig.h pathnames.h externs.h
pathexp.o: pathexp.h flags.h 
pathexp.o: $(GLOB_LIBSRC)/glob.h $(GLOB_LIBSRC)/fnmatch.h
print_cmd.o: config.h bashansi.h ${BASHINCDIR}/ansi_stdlib.h
print_cmd.o: shell.h config.h bashjmp.h ${BASHINCDIR}/posixjmp.h command.h ${BASHINCDIR}/stdc.h error.h
print_cmd.o: general.h bashtypes.h variables.h array.h hashlib.h
print_cmd.o: quit.h ${BASHINCDIR}/maxpath.h unwind_prot.h dispose_cmd.h
print_cmd.o: make_cmd.h subst.h sig.h pathnames.h externs.h
print_cmd.o: ${GRAM_H} $(DEFSRC)/common.h
redir.o: config.h bashtypes.h ${BASHINCDIR}/posixstat.h bashansi.h ${BASHINCDIR}/ansi_stdlib.h ${BASHINCDIR}/filecntl.h
redir.o: ${BASHINCDIR}/memalloc.h shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h command.h ${BASHINCDIR}/stdc.h error.h
redir.o: general.h variables.h array.h hashlib.h quit.h ${BASHINCDIR}/maxpath.h unwind_prot.h
redir.o: dispose_cmd.h make_cmd.h subst.h sig.h pathnames.h externs.h
redir.o: flags.h execute_cmd.h redir.h input.h
shell.o: config.h bashtypes.h ${BASHINCDIR}/posixstat.h bashansi.h ${BASHINCDIR}/ansi_stdlib.h ${BASHINCDIR}/filecntl.h
shell.o: shell.h config.h bashjmp.h ${BASHINCDIR}/posixjmp.h command.h ${BASHINCDIR}/stdc.h error.h
shell.o: general.h bashtypes.h variables.h array.h hashlib.h
shell.o: quit.h ${BASHINCDIR}/maxpath.h unwind_prot.h dispose_cmd.h
shell.o: make_cmd.h subst.h sig.h pathnames.h externs.h
shell.o: flags.h trap.h mailcheck.h builtins.h $(DEFSRC)/common.h
shell.o: jobs.h siglist.h input.h execute_cmd.h findcmd.h bashhist.h
shell.o: ${GLOB_LIBSRC}/fnmatch.h
sig.o: config.h bashtypes.h
sig.o: shell.h config.h bashjmp.h ${BASHINCDIR}/posixjmp.h command.h ${BASHINCDIR}/stdc.h error.h
sig.o: general.h bashtypes.h variables.h array.h hashlib.h
sig.o: quit.h ${BASHINCDIR}/maxpath.h unwind_prot.h dispose_cmd.h
sig.o: make_cmd.h subst.h sig.h pathnames.h externs.h
sig.o: jobs.h siglist.h trap.h $(DEFSRC)/common.h bashline.h bashhist.h
siglist.o: config.h bashtypes.h siglist.h trap.h
stringlib.o: bashtypes.h
stringlib.o: shell.h config.h bashjmp.h ${BASHINCDIR}/posixjmp.h command.h ${BASHINCDIR}/stdc.h error.h
stringlib.o: general.h bashtypes.h variables.h array.h hashlib.h
stringlib.o: quit.h ${BASHINCDIR}/maxpath.h unwind_prot.h dispose_cmd.h
stringlib.o: make_cmd.h subst.h sig.h pathnames.h externs.h
subst.o: config.h bashtypes.h bashansi.h ${BASHINCDIR}/ansi_stdlib.h ${BASHINCDIR}/posixstat.h
subst.o: shell.h config.h bashjmp.h ${BASHINCDIR}/posixjmp.h command.h ${BASHINCDIR}/stdc.h error.h
subst.o: general.h bashtypes.h variables.h array.h hashlib.h
subst.o: quit.h ${BASHINCDIR}/maxpath.h unwind_prot.h dispose_cmd.h
subst.o: make_cmd.h subst.h sig.h pathnames.h externs.h
subst.o: flags.h jobs.h siglist.h execute_cmd.h ${BASHINCDIR}/filecntl.h trap.h pathexp.h
subst.o: mailcheck.h input.h $(DEFSRC)/getopt.h $(DEFSRC)/common.h
subst.o: bashline.h bashhist.h ${GLOB_LIBSRC}/fnmatch.h
test.o: bashtypes.h ${BASHINCDIR}/posixstat.h ${BASHINCDIR}/filecntl.h
test.o: shell.h config.h bashjmp.h ${BASHINCDIR}/posixjmp.h command.h ${BASHINCDIR}/stdc.h error.h
test.o: general.h bashtypes.h variables.h array.h hashlib.h
test.o: quit.h ${BASHINCDIR}/maxpath.h unwind_prot.h dispose_cmd.h
test.o: make_cmd.h subst.h sig.h pathnames.h externs.h test.h
test.o: ${DEFSRC}/common.h
trap.o: config.h bashtypes.h trap.h bashansi.h ${BASHINCDIR}/ansi_stdlib.h
trap.o: shell.h config.h bashjmp.h ${BASHINCDIR}/posixjmp.h command.h ${BASHINCDIR}/stdc.h error.h
trap.o: general.h bashtypes.h variables.h array.h hashlib.h
trap.o: quit.h ${BASHINCDIR}/maxpath.h unwind_prot.h dispose_cmd.h
trap.o: make_cmd.h subst.h sig.h pathnames.h externs.h
trap.o: signames.h $(DEFSRC)/common.h
unwind_prot.o: config.h bashtypes.h bashansi.h ${BASHINCDIR}/ansi_stdlib.h command.h ${BASHINCDIR}/stdc.h
unwind_prot.o: general.h unwind_prot.h quit.h sig.h
variables.o: config.h bashtypes.h ${BASHINCDIR}/posixstat.h bashansi.h ${BASHINCDIR}/ansi_stdlib.h
variables.o: shell.h config.h bashjmp.h ${BASHINCDIR}/posixjmp.h command.h ${BASHINCDIR}/stdc.h error.h
variables.o: general.h bashtypes.h variables.h array.h hashlib.h
variables.o: quit.h ${BASHINCDIR}/maxpath.h unwind_prot.h dispose_cmd.h
variables.o: make_cmd.h subst.h sig.h pathnames.h externs.h
variables.o: flags.h execute_cmd.h mailcheck.h input.h $(DEFSRC)/common.h
variables.o: findcmd.h bashhist.h
variables.o: pcomplete.h
version.o: version.h .build
xmalloc.o: config.h bashtypes.h ${BASHINCDIR}/ansi_stdlib.h error.h

# job control

jobs.o: config.h bashtypes.h trap.h ${BASHINCDIR}/filecntl.h input.h ${BASHINCDIR}/shtty.h
jobs.o: bashansi.h ${BASHINCDIR}/ansi_stdlib.h
jobs.o: shell.h config.h bashjmp.h ${BASHINCDIR}/posixjmp.h command.h ${BASHINCDIR}/stdc.h error.h
jobs.o: general.h bashtypes.h variables.h array.h hashlib.h
jobs.o: quit.h ${BASHINCDIR}/maxpath.h unwind_prot.h dispose_cmd.h
jobs.o: make_cmd.h subst.h sig.h pathnames.h externs.h
jobs.o: jobs.h flags.h $(DEFSRC)/common.h $(DEFDIR)/builtext.h
jobs.o: ${BASHINCDIR}/posixwait.h ${BASHINCDIR}/unionwait.h
nojobs.o: config.h bashtypes.h ${BASHINCDIR}/filecntl.h bashjmp.h ${BASHINCDIR}/posixjmp.h
nojobs.o: command.h ${BASHINCDIR}/stdc.h general.h jobs.h quit.h siglist.h externs.h
nojobs.o: sig.h error.h ${BASHINCDIR}/shtty.h input.h

# shell features that may be compiled in

array.o: config.h bashansi.h ${BASHINCDIR}/ansi_stdlib.h
array.o: shell.h config.h bashjmp.h ${BASHINCDIR}/posixjmp.h command.h ${BASHINCDIR}/stdc.h error.h
array.o: general.h bashtypes.h variables.h array.h hashlib.h
array.o: quit.h ${BASHINCDIR}/maxpath.h unwind_prot.h dispose_cmd.h
array.o: make_cmd.h subst.h sig.h pathnames.h externs.h
array.o: $(DEFSRC)/common.h
braces.o: config.h bashansi.h ${BASHINCDIR}/ansi_stdlib.h
braces.o: shell.h config.h bashjmp.h ${BASHINCDIR}/posixjmp.h command.h ${BASHINCDIR}/stdc.h error.h
braces.o: general.h bashtypes.h variables.h array.h hashlib.h
braces.o: quit.h ${BASHINCDIR}/maxpath.h unwind_prot.h dispose_cmd.h
braces.o: make_cmd.h subst.h sig.h pathnames.h externs.h
alias.o: config.h bashansi.h ${BASHINCDIR}/ansi_stdlib.h command.h ${BASHINCDIR}/stdc.h
alias.o: general.h bashtypes.h externs.h alias.h
alias.o: pcomplete.h

pcomplib.o: config.h bashansi.h ${BASHINCDIR}/ansi_stdlib.h bashtypes.h
pcomplib.o: ${BASHINCDIR}/stdc.h hashlib.h pcomplete.h shell.h
pcomplib.o: bashjmp.h command.h general.h error.h variables.h quit.h
pcomplib.o: unwind_prot.h dispose_cmd.h make_cmd.h subst.h sig.h pathnames.h
pcomplib.o: externs.h ${BASHINCDIR}/maxpath.h

pcomplete.o: config.h bashansi.h ${BASHINCDIR}/ansi_stdlib.h bashtypes.h
pcomplete.o: ${BASHINCDIR}/stdc.h hashlib.h pcomplete.h shell.h
pcomplete.o: bashjmp.h command.h general.h error.h variables.h quit.h
pcomplete.o: unwind_prot.h dispose_cmd.h make_cmd.h subst.h sig.h pathnames.h
pcomplete.o: externs.h ${BASHINCDIR}/maxpath.h

# library support files

bashhist.o: config.h bashtypes.h bashansi.h ${BASHINCDIR}/ansi_stdlib.h ${BASHINCDIR}/posixstat.h
bashhist.o: ${BASHINCDIR}/filecntl.h
bashhist.o: shell.h config.h bashjmp.h ${BASHINCDIR}/posixjmp.h command.h ${BASHINCDIR}/stdc.h error.h
bashhist.o: general.h bashtypes.h variables.h array.h hashlib.h
bashhist.o: quit.h ${BASHINCDIR}/maxpath.h unwind_prot.h dispose_cmd.h
bashhist.o: make_cmd.h subst.h sig.h pathnames.h externs.h
bashhist.o: flags.h input.h parser.h pathexp.h $(DEFSRC)/common.h bashline.h
bashhist.o: $(GLOB_LIBSRC)/fnmatch.h
bashline.o: config.h bashtypes.h ${BASHINCDIR}/posixstat.h bashansi.h ${BASHINCDIR}/ansi_stdlib.h
bashline.o: shell.h config.h bashjmp.h ${BASHINCDIR}/posixjmp.h command.h ${BASHINCDIR}/stdc.h error.h
bashline.o: general.h bashtypes.h variables.h array.h hashlib.h
bashline.o: quit.h ${BASHINCDIR}/maxpath.h unwind_prot.h dispose_cmd.h
bashline.o: make_cmd.h subst.h sig.h pathnames.h externs.h
bashline.o: builtins.h bashhist.h bashline.h execute_cmd.h findcmd.h pathexp.h
bashline.o: $(DEFSRC)/common.h $(GLOB_LIBSRC)/glob.h alias.h
bashline.o: pcomplete.h
bracecomp.o: config.h bashansi.h ${BASHINCDIR}/ansi_stdlib.h
bracecomp.o: shell.h config.h bashjmp.h ${BASHINCDIR}/posixjmp.h command.h ${BASHINCDIR}/stdc.h error.h
bracecomp.o: general.h bashtypes.h variables.h array.h hashlib.h
bracecomp.o: quit.h ${BASHINCDIR}/maxpath.h unwind_prot.h dispose_cmd.h
bracecomp.o: make_cmd.h subst.h sig.h pathnames.h externs.h
bracecomp.o: shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h command.h hashlib.h builtins.h general.h
bracecomp.o: quit.h alias.h config.h  variables.h
bracecomp.o: dispose_cmd.h make_cmd.h subst.h externs.h ${BASHINCDIR}/stdc.h

# library dependencies

bashline.o: $(RL_LIBSRC)/rlconf.h
bashline.o: $(RL_LIBSRC)/keymaps.h $(RL_LIBSRC)/rlstdc.h
bashline.o: $(RL_LIBSRC)/chardefs.h $(RL_LIBSRC)/readline.h
bracecomp.o: $(RL_LIBSRC)/keymaps.h $(RL_LIBSRC)/chardefs.h
bracecomp.o: $(RL_LIBSRC)/readline.h $(RL_LIBSRC)/rlstdc.h
y.tab.o: $(RL_LIBSRC)/keymaps.h $(RL_LIBSRC)/chardefs.h
y.tab.o: $(RL_LIBSRC)/readline.h $(RL_LIBSRC)/rlstdc.h
subst.o: $(RL_LIBSRC)/keymaps.h $(RL_LIBSRC)/chardefs.h
subst.o: $(RL_LIBSRC)/readline.h $(RL_LIBSRC)/rlstdc.h

shell.o: $(HIST_LIBSRC)/history.h $(HIST_LIBSRC)/rlstdc.h
subst.o: $(HIST_LIBSRC)/history.h $(HIST_LIBSRC)/rlstdc.h
bashline.o: $(HIST_LIBSRC)/history.h $(HIST_LIBSRC)/rlstdc.h
bashhist.o: $(HIST_LIBSRC)/history.h $(HIST_LIBSRC)/rlstdc.h
y.tab.o: $(HIST_LIBSRC)/history.h $(HIST_LIBSRC)/rlstdc.h

execute_cmd.o: $(TILDE_LIBSRC)/tilde.h
general.o: $(TILDE_LIBSRC)/tilde.h
mailcheck.o: $(TILDE_LIBSRC)/tilde.h
shell.o: $(TILDE_LIBSRC)/tilde.h
subst.o: $(TILDE_LIBSRC)/tilde.h
variables.o: $(TILDE_LIBSRC)/tilde.h

# XXX - dependencies checked through here

# builtin c sources
builtins/bashgetopt.o: config.h bashansi.h ${BASHINCDIR}/ansi_stdlib.h
builtins/bashgetopt.o: shell.h config.h bashjmp.h command.h general.h error.h
builtins/bashgetopt.o: variables.h quit.h ${BASHINCDIR}/maxpath.h unwind_prot.h dispose_cmd.h
builtins/bashgetopt.o: make_cmd.h subst.h sig.h pathnames.h externs.h
builtins/bashgetopt.o: $(DEFSRC)/common.h
builtins/common.o: bashtypes.h ${BASHINCDIR}/posixstat.h bashansi.h ${BASHINCDIR}/ansi_stdlib.h
builtins/common.o: shell.h config.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h command.h
builtins/common.o: ${BASHINCDIR}/memalloc.h variables.h input.h siglist.h
builtins/common.o: quit.h unwind_prot.h ${BASHINCDIR}/maxpath.h jobs.h builtins.h
builtins/common.o: dispose_cmd.h make_cmd.h subst.h externs.h bashhist.h
builtins/common.o: execute_cmd.h ${BASHINCDIR}/stdc.h general.h error.h pathnames.h
builtins/common.o: ${DEFDIR}/builtext.h
builtins/evalfile.o: bashtypes.h ${BASHINCDIR}/posixstat.h ${BASHINCDIR}/filecntl.h bashansi.h ${BASHINCDIR}/ansi_stdlib.h
builtins/evalfile.o: shell.h config.h bashjmp.h command.h general.h error.h
builtins/evalfile.o: variables.h quit.h ${BASHINCDIR}/maxpath.h unwind_prot.h dispose_cmd.h
builtins/evalfile.o: make_cmd.h subst.h sig.h pathnames.h externs.h
builtins/evalfile.o: jobs.h builtins.h flags.h input.h execute_cmd.h
builtins/evalfile.o: bashhist.h $(DEFSRC)/common.h
builtins/evalstring.o: config.h bashansi.h ${BASHINCDIR}/ansi_stdlib.h
builtins/evalstring.o: shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h command.h siglist.h
builtins/evalstring.o: ${BASHINCDIR}/memalloc.h variables.h input.h
builtins/evalstring.o: quit.h unwind_prot.h ${BASHINCDIR}/maxpath.h jobs.h builtins.h
builtins/evalstring.o: dispose_cmd.h make_cmd.h subst.h externs.h 
builtins/evalstring.o: jobs.h builtins.h flags.h input.h execute_cmd.h
builtins/evalstring.o: bashhist.h $(DEFSRC)/common.h
builtins/getopt.o: config.h ${BASHINCDIR}/memalloc.h
builtins/getopt.o: shell.h bashjmp.h command.h general.h error.h
builtins/getopt.o: variables.h quit.h ${BASHINCDIR}/maxpath.h unwind_prot.h dispose_cmd.h
builtins/getopt.o: make_cmd.h subst.h sig.h pathnames.h externs.h
builtins/getopt.o: $(DEFSRC)/getopt.h
builtins/mkbuiltins.o: config.h bashtypes.h ${BASHINCDIR}/posixstat.h ${BASHINCDIR}/filecntl.h
builtins/mkbuiltins.o: bashansi.h ${BASHINCDIR}/ansi_stdlib.h

# builtin def files
builtins/alias.o: command.h config.h ${BASHINCDIR}/memalloc.h error.h general.h ${BASHINCDIR}/maxpath.h
builtins/alias.o: quit.h $(DEFSRC)/common.h
builtins/alias.o: shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h command.h ${BASHINCDIR}/stdc.h unwind_prot.h
builtins/alias.o: dispose_cmd.h make_cmd.h subst.h externs.h variables.h 
builtins/bind.o: command.h config.h ${BASHINCDIR}/memalloc.h error.h general.h ${BASHINCDIR}/maxpath.h
builtins/bind.o: dispose_cmd.h make_cmd.h subst.h externs.h ${BASHINCDIR}/stdc.h
builtins/bind.o: shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h unwind_prot.h variables.h quit.h
builtins/bind.o: $(DEFSRC)/bashgetopt.h
builtins/break.o: command.h config.h ${BASHINCDIR}/memalloc.h error.h general.h ${BASHINCDIR}/maxpath.h
builtins/break.o: shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h unwind_prot.h variables.h quit.h
builtins/break.o: dispose_cmd.h make_cmd.h subst.h externs.h ${BASHINCDIR}/stdc.h
builtins/builtin.o: command.h config.h ${BASHINCDIR}/memalloc.h error.h general.h ${BASHINCDIR}/maxpath.h
builtins/builtin.o: quit.h $(DEFSRC)/common.h
builtins/builtin.o: shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h unwind_prot.h variables.h 
builtins/builtin.o: dispose_cmd.h make_cmd.h subst.h externs.h ${BASHINCDIR}/stdc.h
builtins/cd.o: command.h config.h ${BASHINCDIR}/memalloc.h error.h general.h ${BASHINCDIR}/maxpath.h
builtins/cd.o: shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h unwind_prot.h variables.h
builtins/cd.o: dispose_cmd.h make_cmd.h subst.h externs.h ${BASHINCDIR}/stdc.h
builtins/cd.o: $(DEFSRC)/common.h quit.h 
builtins/command.o: command.h config.h ${BASHINCDIR}/memalloc.h error.h general.h ${BASHINCDIR}/maxpath.h
builtins/command.o: quit.h $(DEFSRC)/bashgetopt.h
builtins/command.o: shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h unwind_prot.h variables.h 
builtins/command.o: dispose_cmd.h make_cmd.h subst.h externs.h ${BASHINCDIR}/stdc.h
builtins/declare.o: command.h config.h ${BASHINCDIR}/memalloc.h error.h general.h ${BASHINCDIR}/maxpath.h
builtins/declare.o: shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h unwind_prot.h variables.h quit.h
builtins/declare.o: dispose_cmd.h make_cmd.h subst.h externs.h ${BASHINCDIR}/stdc.h
builtins/echo.o: command.h config.h ${BASHINCDIR}/memalloc.h error.h general.h ${BASHINCDIR}/maxpath.h
builtins/echo.o: shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h unwind_prot.h variables.h quit.h
builtins/echo.o: dispose_cmd.h make_cmd.h subst.h externs.h ${BASHINCDIR}/stdc.h
builtins/enable.o: command.h config.h ${BASHINCDIR}/memalloc.h error.h general.h ${BASHINCDIR}/maxpath.h
builtins/enable.o: shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h unwind_prot.h variables.h quit.h
builtins/enable.o: dispose_cmd.h make_cmd.h subst.h externs.h ${BASHINCDIR}/stdc.h
builtins/enable.o: pcomplete.h
builtins/eval.o: command.h config.h ${BASHINCDIR}/memalloc.h error.h general.h ${BASHINCDIR}/maxpath.h
builtins/eval.o: shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h unwind_prot.h variables.h quit.h 
builtins/eval.o: dispose_cmd.h make_cmd.h subst.h externs.h ${BASHINCDIR}/stdc.h
builtins/exec.o: bashtypes.h
builtins/exec.o: command.h config.h ${BASHINCDIR}/memalloc.h error.h general.h ${BASHINCDIR}/maxpath.h
builtins/exec.o: shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h unwind_prot.h variables.h
builtins/exec.o: dispose_cmd.h make_cmd.h subst.h externs.h execute_cmd.h
builtins/exec.o: findcmd.h flags.h quit.h $(DEFSRC)/common.h ${BASHINCDIR}/stdc.h
builtins/exit.o: bashtypes.h
builtins/exit.o: command.h config.h ${BASHINCDIR}/memalloc.h error.h general.h ${BASHINCDIR}/maxpath.h
builtins/exit.o: shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h unwind_prot.h variables.h quit.h
builtins/exit.o: dispose_cmd.h make_cmd.h subst.h externs.h ${BASHINCDIR}/stdc.h
builtins/fc.o: bashtypes.h ${BASHINCDIR}/posixstat.h
builtins/fc.o: bashansi.h ${BASHINCDIR}/ansi_stdlib.h builtins.h command.h ${BASHINCDIR}/stdc.h 
builtins/fc.o: command.h config.h ${BASHINCDIR}/memalloc.h error.h general.h ${BASHINCDIR}/maxpath.h
builtins/fc.o: flags.h unwind_prot.h variables.h shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h 
builtins/fc.o: dispose_cmd.h make_cmd.h subst.h externs.h ${BASHINCDIR}/stdc.h quit.h 
builtins/fc.o: $(DEFSRC)/bashgetopt.h bashhist.h
builtins/fg_bg.o: bashtypes.h
builtins/fg_bg.o: command.h config.h ${BASHINCDIR}/memalloc.h error.h general.h ${BASHINCDIR}/maxpath.h
builtins/fg_bg.o: shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h unwind_prot.h variables.h quit.h
builtins/fg_bg.o: dispose_cmd.h make_cmd.h subst.h externs.h ${BASHINCDIR}/stdc.h
builtins/getopts.o: command.h config.h ${BASHINCDIR}/memalloc.h error.h general.h ${BASHINCDIR}/maxpath.h
builtins/getopts.o: shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h unwind_prot.h variables.h quit.h 
builtins/getopts.o: dispose_cmd.h make_cmd.h subst.h externs.h ${BASHINCDIR}/stdc.h
builtins/hash.o: bashtypes.h
builtins/hash.o: builtins.h command.h findcmd.h ${BASHINCDIR}/stdc.h $(DEFSRC)/common.h
builtins/hash.o: command.h config.h ${BASHINCDIR}/memalloc.h error.h general.h ${BASHINCDIR}/maxpath.h
builtins/hash.o: shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h unwind_prot.h variables.h quit.h 
builtins/help.o: command.h config.h ${BASHINCDIR}/memalloc.h error.h general.h ${BASHINCDIR}/maxpath.h
builtins/help.o: dispose_cmd.h make_cmd.h subst.h externs.h ${BASHINCDIR}/stdc.h
builtins/help.o: shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h unwind_prot.h variables.h quit.h
builtins/help.o: $(GLOB_LIBSRC)/glob.h
builtins/history.o: bashtypes.h
builtins/history.o: command.h config.h ${BASHINCDIR}/memalloc.h error.h general.h ${BASHINCDIR}/maxpath.h
builtins/history.o: quit.h dispose_cmd.h make_cmd.h subst.h externs.h ${BASHINCDIR}/stdc.h
builtins/history.o: ${BASHINCDIR}/filecntl.h shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h unwind_prot.h
builtins/history.o: bashhist.h variables.h 
builtins/inlib.o: command.h config.h ${BASHINCDIR}/memalloc.h error.h general.h ${BASHINCDIR}/maxpath.h
builtins/inlib.o: shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h unwind_prot.h variables.h quit.h 
builtins/inlib.o: dispose_cmd.h make_cmd.h subst.h externs.h ${BASHINCDIR}/stdc.h
builtins/jobs.o: command.h config.h ${BASHINCDIR}/memalloc.h error.h general.h ${BASHINCDIR}/maxpath.h
builtins/jobs.o: quit.h $(DEFSRC)/bashgetopt.h
builtins/jobs.o: shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h unwind_prot.h variables.h 
builtins/jobs.o: dispose_cmd.h make_cmd.h subst.h externs.h ${BASHINCDIR}/stdc.h
builtins/kill.o: command.h config.h ${BASHINCDIR}/memalloc.h error.h general.h ${BASHINCDIR}/maxpath.h
builtins/kill.o: quit.h dispose_cmd.h make_cmd.h subst.h externs.h ${BASHINCDIR}/stdc.h
builtins/kill.o: shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h trap.h unwind_prot.h variables.h 
builtins/let.o: command.h config.h ${BASHINCDIR}/memalloc.h error.h general.h ${BASHINCDIR}/maxpath.h
builtins/let.o: quit.h dispose_cmd.h make_cmd.h subst.h externs.h ${BASHINCDIR}/stdc.h
builtins/let.o: shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h unwind_prot.h variables.h 
builtins/printf.o: config.h ${BASHINCDIR}/memalloc.h bashjmp.h command.h error.h
builtins/printf.o: general.h quit.h dispose_cmd.h make_cmd.h subst.h
builtins/printf.o: externs.h sig.h pathnames.h shell.h unwind_prot.h
builtins/printf.o: variables.h ${BASHINCDIR}/stdc.h $(DEFSRC)/bashgetopt.h
builtins/pushd.o: command.h config.h ${BASHINCDIR}/memalloc.h error.h general.h ${BASHINCDIR}/maxpath.h
builtins/pushd.o: quit.h dispose_cmd.h make_cmd.h subst.h externs.h ${BASHINCDIR}/stdc.h
builtins/pushd.o: shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h unwind_prot.h variables.h
builtins/pushd.o: $(DEFSRC)/common.h
builtins/read.o: command.h config.h ${BASHINCDIR}/memalloc.h error.h general.h ${BASHINCDIR}/maxpath.h
builtins/read.o: quit.h dispose_cmd.h make_cmd.h subst.h externs.h ${BASHINCDIR}/stdc.h
builtins/read.o: shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h unwind_prot.h variables.h 
builtins/return.o: command.h config.h ${BASHINCDIR}/memalloc.h error.h general.h ${BASHINCDIR}/maxpath.h
builtins/return.o: quit.h dispose_cmd.h make_cmd.h subst.h externs.h ${BASHINCDIR}/stdc.h
builtins/return.o: shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h unwind_prot.h variables.h 
builtins/set.o: command.h config.h ${BASHINCDIR}/memalloc.h error.h general.h ${BASHINCDIR}/maxpath.h
builtins/set.o: quit.h dispose_cmd.h make_cmd.h subst.h externs.h ${BASHINCDIR}/stdc.h
builtins/set.o: shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h unwind_prot.h variables.h flags.h
builtins/setattr.o: command.h config.h ${BASHINCDIR}/memalloc.h error.h general.h ${BASHINCDIR}/maxpath.h
builtins/setattr.o: quit.h $(DEFSRC)/common.h $(DEFSRC)/bashgetopt.h
builtins/setattr.o: shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h unwind_prot.h variables.h 
builtins/setattr.o: dispose_cmd.h make_cmd.h subst.h externs.h ${BASHINCDIR}/stdc.h
builtins/shift.o: command.h config.h ${BASHINCDIR}/memalloc.h error.h general.h ${BASHINCDIR}/maxpath.h
builtins/shift.o: quit.h dispose_cmd.h make_cmd.h subst.h externs.h ${BASHINCDIR}/stdc.h
builtins/shift.o: shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h unwind_prot.h variables.h 
builtins/shift.o: dispose_cmd.h make_cmd.h subst.h externs.h ${BASHINCDIR}/stdc.h
builtins/shopt.o: command.h config.h ${BASHINCDIR}/memalloc.h error.h general.h
builtins/shopt.o: quit.h dispose_cmd.h make_cmd.h subst.h externs.h
builtins/shopt.o: shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h unwind_prot.h variables.h ${BASHINCDIR}/maxpath.h
builtins/shopt.o: $(DEFSRC)/common.h $(DEFSRC)/bashgetopt.h
builtins/source.o: command.h config.h ${BASHINCDIR}/memalloc.h error.h general.h ${BASHINCDIR}/maxpath.h
builtins/source.o: quit.h dispose_cmd.h make_cmd.h subst.h externs.h ${BASHINCDIR}/stdc.h
builtins/source.o: shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h unwind_prot.h variables.h
builtins/source.o: findcmd.h
builtins/suspend.o: command.h config.h ${BASHINCDIR}/memalloc.h error.h general.h ${BASHINCDIR}/maxpath.h
builtins/suspend.o: quit.h dispose_cmd.h make_cmd.h subst.h externs.h ${BASHINCDIR}/stdc.h
builtins/suspend.o: shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h unwind_prot.h variables.h 
builtins/test.o: command.h config.h ${BASHINCDIR}/memalloc.h error.h general.h ${BASHINCDIR}/maxpath.h
builtins/test.o: quit.h dispose_cmd.h make_cmd.h subst.h externs.h ${BASHINCDIR}/stdc.h
builtins/test.o: shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h unwind_prot.h variables.h 
builtins/test.o: test.h
builtins/times.o: command.h config.h ${BASHINCDIR}/memalloc.h error.h general.h ${BASHINCDIR}/maxpath.h
builtins/times.o: quit.h dispose_cmd.h make_cmd.h subst.h externs.h ${BASHINCDIR}/stdc.h
builtins/times.o: shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h unwind_prot.h variables.h 
builtins/trap.o: command.h config.h ${BASHINCDIR}/memalloc.h error.h general.h ${BASHINCDIR}/maxpath.h
builtins/trap.o: quit.h $(DEFSRC)/common.h
builtins/trap.o: shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h unwind_prot.h variables.h 
builtins/trap.o: dispose_cmd.h make_cmd.h subst.h externs.h ${BASHINCDIR}/stdc.h
builtins/type.o: command.h config.h ${BASHINCDIR}/memalloc.h error.h general.h ${BASHINCDIR}/maxpath.h
builtins/type.o: quit.h $(DEFSRC)/common.h findcmd.h
builtins/type.o: shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h unwind_prot.h variables.h
builtins/type.o: dispose_cmd.h make_cmd.h subst.h externs.h ${BASHINCDIR}/stdc.h
builtins/ulimit.o: command.h config.h ${BASHINCDIR}/memalloc.h error.h general.h ${BASHINCDIR}/maxpath.h
builtins/ulimit.o: quit.h dispose_cmd.h make_cmd.h subst.h externs.h ${BASHINCDIR}/stdc.h
builtins/ulimit.o: shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h unwind_prot.h variables.h 
builtins/umask.o: command.h config.h ${BASHINCDIR}/memalloc.h error.h general.h ${BASHINCDIR}/maxpath.h
builtins/umask.o: quit.h dispose_cmd.h make_cmd.h subst.h externs.h ${BASHINCDIR}/stdc.h
builtins/umask.o: shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h unwind_prot.h variables.h 
builtins/wait.o: command.h config.h ${BASHINCDIR}/memalloc.h error.h general.h ${BASHINCDIR}/maxpath.h
builtins/wait.o: quit.h dispose_cmd.h make_cmd.h subst.h externs.h ${BASHINCDIR}/stdc.h
builtins/wait.o: shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h unwind_prot.h variables.h

builtins/complete.o: config.h shell.h bashjmp.h ${BASHINCDIR}/posixjmp.h sig.h
builtins/complete.o: unwind_prot.h variables.h
builtins/complete.o: bashtypes.h bashansi.h ${BASHINCDIR}/ansi_stdlib.h
builtins/complete.o: builtins.h
builtins/complete.o: pcomplete.h
builtins/complete.o: ${DEFSRC}/common.h ${DEFSRC}/bashgetopt.h

# builtin library dependencies
builtins/bind.o: $(RL_LIBSRC)/chardefs.h $(RL_LIBSRC)/readline.h
builtins/bind.o: $(RL_LIBSRC)/keymaps.h $(RL_LIBSRC)/rlstdc.h

builtins/bind.o: $(HIST_LIBSRC)/history.h $(RL_LIBSRC)/rlstdc.h
builtins/fc.o: $(HIST_LIBSRC)/history.h $(RL_LIBSRC)/rlstdc.h
builtins/history.o: $(HIST_LIBSRC)/history.h $(RL_LIBSRC)/rlstdc.h

builtins/common.o: $(TILDE_LIBSRC)/tilde.h
builtins/cd.o: $(TILDE_LIBSRC)/tilde.h 

builtins/alias.o: $(DEFSRC)/alias.def
builtins/bind.o: $(DEFSRC)/bind.def
builtins/break.o: $(DEFSRC)/break.def
builtins/builtin.o: $(DEFSRC)/builtin.def
builtins/cd.o: $(DEFSRC)/cd.def
builtins/colon.o: $(DEFSRC)/colon.def
builtins/command.o: $(DEFSRC)/command.def
builtins/complete.o: $(DEFSRC)/complete.def
builtins/declare.o: $(DEFSRC)/declare.def
builtins/echo.o: $(DEFSRC)/echo.def
builtins/enable.o: $(DEFSRC)/enable.def
builtins/eval.o: $(DEFSRC)/eval.def
builtins/exec.o: $(DEFSRC)/exec.def
builtins/exit.o: $(DEFSRC)/exit.def
builtins/fc.o: $(DEFSRC)/fc.def
builtins/fg_bg.o: $(DEFSRC)/fg_bg.def
builtins/getopts.o: $(DEFSRC)/getopts.def
builtins/hash.o: $(DEFSRC)/hash.def
builtins/help.o: $(DEFSRC)/help.def
builtins/history.o: $(DEFSRC)/history.def
builtins/inlib.o: $(DEFSRC)/inlib.def
builtins/jobs.o: $(DEFSRC)/jobs.def
builtins/kill.o: $(DEFSRC)/kill.def
builtins/let.o: $(DEFSRC)/let.def
builtins/pushd.o: $(DEFSRC)/pushd.def
builtins/read.o: $(DEFSRC)/read.def
builtins/reserved.o: $(DEFSRC)/reserved.def
builtins/return.o: $(DEFSRC)/return.def
builtins/set.o: $(DEFSRC)/set.def
builtins/setattr.o: $(DEFSRC)/setattr.def
builtins/shift.o: $(DEFSRC)/shift.def
builtins/shopt.o: $(DEFSRC)/shopt.def
builtins/source.o: $(DEFSRC)/source.def
builtins/suspend.o: $(DEFSRC)/suspend.def
builtins/test.o: $(DEFSRC)/test.def
builtins/times.o: $(DEFSRC)/times.def
builtins/trap.o: $(DEFSRC)/trap.def
builtins/type.o: $(DEFSRC)/type.def
builtins/ulimit.o: $(DEFSRC)/ulimit.def
builtins/umask.o: $(DEFSRC)/umask.def
builtins/wait.o: $(DEFSRC)/wait.def
