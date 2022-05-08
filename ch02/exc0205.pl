#!/usr/bin/perl
package LearningPerl::chapter02;

use strict;
use warnings FATAL => 'all';

my $text;
my $times;
my $idx;

print "Enter the text: ";
chop($text = <STDIN>);
print "Enter the number of times to print the text: ";
chop($times = <STDIN>);

for $idx (1..$times) {
    print $text, "\n";
}
