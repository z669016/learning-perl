#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

my @lines;
my $line;

print "enter some lies of text, and finish with CTRL-D (end-of-file on unix like systems):\n";
chomp(@lines = <STDIN>);

foreach (sort(@lines)) {
    $line .= $_ . ' ';
}
print $line, "\n";

