#!/usr/bin/perl
use 5.10.0;
use strict;
use warnings FATAL => 'all';

sub read_line {
    my $line = <>;
    if (defined($line)) {
        chomp($line);
    }

    $line;
}

my $line;
my @lines;
print "Enter a few strings and end with an empty line (enter):\n";
$line = read_line();
while (defined($line) && length($line) != 0) {
    push(@lines, $line);
    $line = read_line();
}

print "0123456789" x 4, "\n";
for $line (@lines) {
    printf "%20s\n", $line;
}

