#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
use Time::Moment;

my $entered_year;
my $entered_month;

$entered_year = shift @ARGV;
$entered_month = shift @ARGV;

if (!defined($entered_year)) {
    print "Enter a year: ";
    chomp($entered_year = <STDIN>);
}

if (!defined($entered_month)) {
    print "Enter a month for $entered_year: ";
    chomp($entered_month = <STDIN>);
}

my $entered_date = Time::Moment->new(
    year       => $entered_year,
    month      => $entered_month,
    day        => 1,
);

my $current_date = Time::Moment->now;
my $years  = $entered_date->delta_years( $current_date );
my $months = $entered_date->delta_months( $current_date ) % 12;

printf "The difference from now to %s is %d years and %d months\n", $entered_date->strftime("%d-%m-%Y"), $years, $months;