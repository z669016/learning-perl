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

my @list = qw(1 2 3 4 5 6 7 8 9);
print "Sum of @list is ", total(@list);