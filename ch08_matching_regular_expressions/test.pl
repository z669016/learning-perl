#!/usr/bin/perl
use warnings FATAL => 'all';
use strict;
while (<>) { # take one input line at a time
    chomp;
    if (/\b(\w+a)\b/) {
        print "Matched: |$`<$&>$'|\n";  # the special match vars
        print "\$1 contains '$1'\n";
    } else {
        print "No match: |$_|\n";
    }
}