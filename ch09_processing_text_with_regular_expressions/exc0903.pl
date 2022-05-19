#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

while (@ARGV) {
    my $in = shift @ARGV;
    my $in_fh;
    if (!open $in_fh, "<", $in) {
        die "Could not open input file $in: $!";
    }
    my $out = $in =~ s/(\.\w+)/.out/r;
    my $out_fh;
    if (!open $out_fh, ">", $out) {
        die "Could not open output file $out: $!";
    }

    while (<$in_fh>) {
        chomp;
        s/Fred/\n/ig;
        s/Wilma/Fred/ig;
        s/\n/Wilma/ig;
        print $out_fh $_, "\n";
    }
}