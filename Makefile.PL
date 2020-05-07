use 5.030000;
use strict;
use warnings;
use utf8;
use ExtUtils::CXX;
use ExtUtils::MakeMaker 7.12; # for XSMULTI option

extutils_cxx {
WriteMakefile(
  NAME          => 'Color',
  VERSION_FROM  => 'lib/Color.pm',
  PREREQ_PM => {
      'ExtUtils::CXX'       => 0,
      'ExtUtils::MakeMaker' => '7.12'
  },
  ABSTRACT_FROM => 'lib/Color.pm',
  AUTHOR        => 'Håkon Hægland <hakon.hagland@gmail.com>',
  OPTIMIZE      => '-g',
  XSMULTI       => 0,
  LICENSE       => 'perl',
  LIBS          => ['-L./c++-lib/install/lib -lcolor'],
  DEFINE        => '', # e.g., '-DHAVE_SOMETHING'
  INC           => '-I./c++-lib/install/include',
);
};
  
