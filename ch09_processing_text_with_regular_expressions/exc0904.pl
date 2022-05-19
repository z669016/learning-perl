#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

$^I = ".bak";

while (<>) {
    if (/\A#!/) {
        print;
        print "## Copyright (c) 2022 by z669016\n";
    } else {
        print;
    }
}