#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

my @names = qw(fred betty barney dino wilma pebbles bamm-bamm);
my @lines;

print "enter some numbers, and finish with CTRL-D (end-of-file on unix like systems):\n";
chomp(@lines = <STDIN>);

foreach (@lines) {
    print $names[$_ - 1], "\n";
}