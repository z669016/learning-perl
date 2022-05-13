#!/usr/bin/perl
package LearningPerl::chapter02;

use strict;
use warnings FATAL => 'all';

my $PI = 3.141592654;
my $radius;

print "Enter a radius for a circle: ";
chop($radius = <STDIN>);

print "The circumference of a circle with radius ${radius} is ", 2 * $PI * ($radius < 0 ?  0 : $radius);

