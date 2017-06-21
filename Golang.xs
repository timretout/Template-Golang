#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "libtemplategolang.h"

MODULE = Template::Golang		PACKAGE = Template::Golang		

char *
processHTML(file)
		char *file
	OUTPUT:
		RETVAL
