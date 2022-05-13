#!/usr/bin/perl
use 5.30.0;
use strict;
use warnings FATAL => 'all';

sub greet {
    state @all = ();

    my $current = shift @_;

    if (@all == 0 && !defined($current)) {
        print "I haven't seen anyone yet.\n";
        return @all;
    }

    if (!defined($current)) {
        print "I've seen: @{all}.\n";
        return @all;
    }

    if (@all == 0) {
        print "Hi ${current}! You are the first.\n";
    } else {
        print "Hi ${current}! I've seen: @{all}.\n";
    }

    push(@all, $current);

    @all;
}

greet();
greet("Jim");
greet();
greet("Tom");
greet("Peter");
greet("Margot");
greet();