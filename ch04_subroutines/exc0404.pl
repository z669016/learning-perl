#!/usr/bin/perl
use 5.30.0;
use strict;
use warnings FATAL => 'all';

sub greet {
    state $last = undef;

    my $current = shift @_;

    if (!defined($last) && !defined($current)) {
        print "No one was greeted so far.\n";
        return undef;
    }

    if (!defined($current)) {
        print "${last} is also here.\n";
        return $last;
    }

    if (!defined($last)) {
        print "Hi ${current}! You are the first.\n";
    } else {
        print "Hi ${current}! ${last} is also here.\n";
    }

    $last = $current;
}

greet();
greet("Jim");
greet();
greet("Tom");
greet();