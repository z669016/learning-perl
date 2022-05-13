#!/usr/bin/perl
package LearningPerl::chapter02;

use strict;
use warnings FATAL => 'all';

my $first;
my $second;

print "Enter the first number: ";
chop($first = <STDIN>);
print "Enter the second number: ";
chop($second = <STDIN>);

print "The product of ${first} and ${second} is ", $first * $second;

