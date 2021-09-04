# $Id: Makefile.in,v 1.1.2.6 2002/12/12 21:29:04 jnelson Exp $

MAKE=make

.PHONY: clean mrclean distclean boa docs

all:	boa

boa:
	(cd src && $(MAKE) $(MFLAGS))

docs:
	(cd docs && $(MAKE) $(MFLAGS))

clean:
	-(cd src && $(MAKE) $(MFLAGS) clean)
	-(cd docs && $(MAKE) clean)
	
distclean:	mrclean

mrclean:	clean
	-(cd src && $(MAKE) $(MFLAGS) mrclean)
	-(cd docs && $(MAKE)$(MFLAGS) mrclean)
	rm -f config.status config.cache config.h config.log 
	rm -f Makefile *~

# dummy target for install
install:
	@echo Please read the documentation then install manually.
