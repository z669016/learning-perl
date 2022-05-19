#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

my $file_name = "./ch07_regular_expressions/fred.txt";
if (!open STDIN, "<", $file_name) {
    die "Could not open '$file_name, $!";
}

foreach (<>) {
    if (/(\S)\1/) {
        print $1 x 2;
    }
}