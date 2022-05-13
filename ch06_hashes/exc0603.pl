#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

my $size = 0;
foreach my $key (keys %ENV) {
    if (length($key) > $size) {
        $size = length($key);
    }
}

foreach my $key (sort keys %ENV) {
    printf "%*s => %s\n", $size, $key, $ENV{$key};
}