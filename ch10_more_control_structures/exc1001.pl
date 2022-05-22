#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

my $number_to_guess = int(1 + rand 10);
my $guess;

while (1) {
    print "What's your guess: ";
    chomp($guess = <STDIN>);

    last if $guess eq "" || $guess eq "exit" || $guess eq "quit";
    next unless $guess =~ /\d+/;

    if ($guess == $number_to_guess) {
        print "Right guess !!!!\n";
        last;
    }

    print "Your guess is too high.\n" if $guess > $number_to_guess;
    print "Your guess is too low.\n" if $guess < $number_to_guess;
}

