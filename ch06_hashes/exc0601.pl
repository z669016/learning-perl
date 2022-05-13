#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

my %family_names = (
    fred   => "fintstone",
    barney => "rubble",
    wilma  => "flintstone",
);

print "Enter a first name of a family member: ";
chomp(my $name = <STDIN>);
if (exists($family_names{$name})) {
    print "The family name for $name is $family_names{$name}\n";
} else {
    print "Sorry, I don;t know a person with that first name\n"
}




