#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

my $date = `date`;
chomp($date);

(my $day_of_week) = $date =~ /(\A\S+)/;
if ($day_of_week =~ /Sat|Sun/){
    print "go play";
} else {
    print "get to work";
}