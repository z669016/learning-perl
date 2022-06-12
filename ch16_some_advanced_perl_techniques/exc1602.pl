#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

sub longest_name {
    my $longest = 0;
    foreach (@_) {
        $longest = length($_) if (length($_) > $longest);
    }

    $longest;
}

my @file_names = glob "*";
my $longest = longest_name(@file_names);
foreach (@file_names) {
    printf "%-*s\t%s\t%s\n", $longest, $_, (stat($_))[8, 9];
}