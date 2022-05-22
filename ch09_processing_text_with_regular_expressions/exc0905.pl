#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

sub open_in {
    my $in = $_[0];
    open my $in_fh, "<", $in or die "Could not open input file $in: $!";

    $in_fh;
}

sub out_name {
    my $in = $_[0];
    $in =~ s/(\.\w+)/.out/r;
}

sub open_out {
    my $out = $_[0];
    open my $out_fh, ">", $out or die "Could not open output file $out: $!";

    $out_fh;
}

sub contains_copyright {
    my $in = $_[0];
    my $in_fh = open_in($in);

    while (<$in_fh>) {
        if (/\A## Copyright/) {
            return 1;
        }
    }
    return 0;
}

sub add_copyright {
    my $in = $_[0];
    my $in_fh = open_in($in);

    my $out = out_name($in);
    my $out_fh = open_out($out);

    while (<$in_fh>) {
        if (/\A#!/) {
            print $out_fh $_;
            print $out_fh "## Copyright (c) 2022 by z669016\n";
        } else {
            print $out_fh $_;
        }
    }
}

my @to_update;
while (@ARGV) {
    my $in = shift @ARGV;
    push(@to_update, $in) if !contains_copyright($in);
}

add_copyright(pop @to_update) while (@to_update);
