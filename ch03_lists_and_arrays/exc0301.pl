#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

my @lines;

print "enter some lies of text, and finish with CTRL-D (end-of-file on unix like systems):\n";
chomp(@lines = <STDIN>);

foreach (reverse(@lines)) {
    print $_, "\n";
}