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

sub format_date {
    my ($day, $month, $year) = (localtime($_))[3, 4, 5];
    sprintf("%04d-%02d-%02d",$year + 1900, $month + 1, $day)
}

my @file_names = glob "*";
my $longest = longest_name(@file_names);

foreach (@file_names) {
    printf "%-*s\t%s\t%s\n", $longest, $_, map { format_date($_) } (stat($_))[8, 9];
}