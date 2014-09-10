VERSION 	= 0.1
PACKAGE 	= vi-lib-$(VERSION)

dist: $(PACKAGE).tar.gz

$(PACKAGE).tar.gz : $(PACKAGE).tar 
	gzip $(PACKAGE).tar

$(PACKAGE).tar : 
	rm -f $@
	find . ! -type d -print | sed \
	  -e '/\/RCS\/.*,v$$/d'	\
	  -e '/\/RCS$$/d' \
	  -e 's/^./$(PACKAGE)/' | sort > /tmp/@$$.=
	pwd | (cd .. && ln -s `cat` $(PACKAGE) && \
	  tar cf $(PACKAGE).tar `cat /tmp/@$$.=` && \
	  mv $(PACKAGE).tar $(PACKAGE) && \
	  cd $(PACKAGE) && \
	  rm ../$(PACKAGE) /tmp/@$$.= )
