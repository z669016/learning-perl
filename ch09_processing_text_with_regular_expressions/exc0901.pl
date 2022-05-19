#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

my $what = "fred|barney";

while (<>) {
    if (/(?:$what){3}/) {
        print;
    }
}