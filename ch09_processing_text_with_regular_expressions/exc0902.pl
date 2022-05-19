#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

while (@ARGV) {
    my $in = pop @ARGV;
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
        s/Fred/Larry/ig;
        print $out_fh $_;
    }
}