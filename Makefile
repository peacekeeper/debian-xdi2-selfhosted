ifeq ($(MVN),)
    MVN  := mvn
endif

.PHONY: all package compile check test doc docs javadoc clean help

all: 
	@ $(MVN) $(MVNFLAGS) package

clean:
	@ $(MVN) $(MVNFLAGS) clean

compile: 
	@ $(MVN) $(MVNFLAGS) compile

test:
	@ $(MVN) $(MVNFLAGS) test

qulice:	
	@ $(MVN) clean install -Pqulice

install:
	@ $(MVN) clean install
				
site:
	@ $(MVN) site -Psite
	
gh-pages:	
	@ $(MVN) clean test install site-deploy -Pgh-pages

doc:
	@ $(MVN) $(MVNFLAGS) javadoc:javadoc
		
package: 
	@ $(MVN) $(MVNFLAGS) package

#clean:
#	@- rm -rf ./bin/*
#	@- rm -rf ./build/*
#	@- rm -rf ./docs/*

update-versions:
	@ $(MVN) versions:update-properties
	
distclean: clean ;

docs: doc ;

javadoc: doc ;

documentation: doc ;

help:
	@ echo "Usage   :  make <target>"
	@ echo "Targets :"
	@ echo "   all ........... Builds the project"
	@ echo "   clean ......... Removes build products"	
	@ echo "   compile ....... Compiles all Java files"	
	@ echo "   test .......... Builds and runs all unit tests"
	@ echo "   qulice ....... Builds and runs various static code analysis tools"	
	@ echo "   install .......... Builds and installs to local repository"	
	@ echo "   docs .......... Generates project documentation."
	@ echo "   help .......... Prints this help message"

