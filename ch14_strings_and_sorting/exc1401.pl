#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

sub get_number_list {
    if (@_ > 0) {
        return @_;
    }

    if (@ARGV > 0) {
        return @ARGV;
    }

    my @number_list;
    while (1) {
        chomp(my $number = <STDIN>);
        last if length($number) == 0;

        push @number_list,$number;
    }

    @number_list;
}

sub longest_number {
    my $max = 0;
    foreach (@_) {
        if ((my $len = length($_)) > $max) {
            $max = $len;
        }
    }

    $max;
}

my @number_list = sort {$a <=> $b} get_number_list(17, 1000, 04, 1.50, 3.14159, -10, 1.5, 4, 2001, 90210, 666);
my $column_size = longest_number(@number_list);

foreach (@number_list) {
    printf "%*s\n", $column_size, $_;
}
