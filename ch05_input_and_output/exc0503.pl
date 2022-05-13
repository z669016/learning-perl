#!/usr/bin/perl
use 5.10.0;
use strict;
use warnings FATAL => 'all';

my $size;
print "Enter column size: ";
$size = <>;

my $line;
my @lines;
print "Enter a few strings and end with an empty line (enter):\n";
chomp($line = <>);
while (defined($line) && length($line) != 0) {
    push(@lines, $line);
    chomp($line = <>);
}

print "0123456789" x ($size / 10 + 1), "\n";
for $line (@lines) {
    printf "%*s\n", $size, $line;
}

