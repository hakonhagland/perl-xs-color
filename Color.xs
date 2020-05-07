#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
//
// The ppport.h include file was generated using:
//   $ perl -MDevel::PPPort -E 'Devel::PPPort::WriteFile
//
#include "ppport.h"       // allow the module to be built using older versions of Perl
#include "Color.hpp"

TYPEMAP: <<HERE
TYPEMAP
Color *  O_OBJECT

OUTPUT
O_OBJECT
    sv_setref_pv( $arg, CLASS, (void*)$var );

INPUT
O_OBJECT
    if( sv_isobject($arg) && (SvTYPE(SvRV($arg)) == SVt_PVMG) )
        $var = ($type)SvIV((SV*)SvRV( $arg ));
    else{
        warn("${Package}::$func_name() -- " .
            "$var is not a blessed SV reference");
        XSRETURN_UNDEF;
    }
HERE

MODULE = Color  PACKAGE = Color
PROTOTYPES: DISABLE

int
Color::blue()

void
Color::set_blue( val )
    int val
    
void
Color::DESTROY()

Color *
Color::new()

    
