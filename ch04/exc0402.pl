#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

sub total {
    my $total = 0;
    foreach (@_) {
        $total += $_;
    }

    $total
}

print "Sum of 1..1000 is ", total(1..1000);