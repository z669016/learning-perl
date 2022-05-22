#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

sub test_rwxe {
    my $file_name = $_[0] // $_;

    -e -r -w -x $file_name;
}

my @file_list = @ARGV;
if (! @file_list) {
    print "Enter some file names, one per line, and end with an empty line:\n";
    while (1) {
        chomp(my $file_name = <STDIN>);
        last if ($file_name eq "");

        push(@file_list, $file_name);
    }
}

foreach (@file_list) {
    printf "File $_ does%s match the selection criteria.\n", test_rwxe ? "" : "n't";
}