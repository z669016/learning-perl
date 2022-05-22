#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

my $verbose = $ENV{"VERBOSE"} // 0;
my $number_to_guess = int(1 + rand 10);
my $guess;
my $count = 0;

print "Secret number is $number_to_guess\n" if $verbose;

while (1) {
    $count++;
    print "Attempt $count\n" if $verbose;

    print "What's your guess: ";
    chomp($guess = <STDIN>);
    print "value entered is '$guess'\n" if $verbose;

    last if $guess eq "" || $guess eq "exit" || $guess eq "quit";
    next unless $guess =~ /\d+/;

    if ($guess == $number_to_guess) {
        print "Right guess !!!!\n";
        last;
    }

    print "Your guess is too high.\n" if $guess > $number_to_guess;
    print "Your guess is too low.\n" if $guess < $number_to_guess;
}

