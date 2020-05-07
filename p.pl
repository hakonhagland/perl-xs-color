#! /usr/bin/env perl

use feature qw(say);
use strict;
use warnings;
use ExtUtils::testlib;
use Color;

my $color = Color->new();
$color->set_blue(2);
say "Blue: ", $color->blue;

