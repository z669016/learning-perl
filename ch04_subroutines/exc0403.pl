#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

sub average {
    my $total = 0;
    foreach (@_) {
        $total += $_;
    }

    $total / @_;
}

sub above_average {
    my $average = average(@_);
    my @above_average;

    foreach (@_) {
        if ($_ > $average) {
            push @above_average, $_;
        }
    }

    @above_average;
}

sub print_above_average {
    my $answer;

    foreach (above_average(@_)) {
        $answer .= $_;
        $answer .= ' ';
    }

    $answer;
}

print "above average 1..10 is ", print_above_average(1..10), "\n";
print "above average 100, 1..10 is ", print_above_average(100, 1..10), "\n";