#!/usr/bin/perl
use warnings FATAL => 'all';
use strict;
while (<>) { # take one input line at a time
    chomp;
    if (/\b(?<word>\w+a)\b(?<five>.{0,5})/) {
        print "\$+{word} contains '$+{word}', which was followed by '$+{five}'\n";
    } else {
        print "No match: |$_|\n";
    }
}