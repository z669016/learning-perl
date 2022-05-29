#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';


my %last_name = qw{
    fred flintstone Wilma Flintstone Barney Rubble
    betty rubble Bamm-Bamm Rubble PEBBLES FLINTSTONE
};

sub by_last_first {
    "\F$last_name{$a}" cmp "\F$last_name{$b}" or "\F$a" cmp "\F$b" ;
}

foreach (sort by_last_first keys %last_name) {
    print "$_ $last_name{$_}\n";
}