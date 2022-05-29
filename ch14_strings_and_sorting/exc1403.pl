#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

sub indices_of {
    my $sentence = $_[0];
    my $word = $_[1];
    my $where = -1;
    my @indices;

    while (1) {
        $where = index($sentence, $word, $where + 1);
        last if $where == -1;

        push @indices, $where;
    }

    @indices;
}

print "Enter your sentence: ";
chomp(my $sentence = <STDIN>);

print "Enter the substring to search for: ";
chomp(my $word = <STDIN>);

my @indices = indices_of($sentence, $word);
print "@indices\n";