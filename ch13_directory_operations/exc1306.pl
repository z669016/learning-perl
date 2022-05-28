#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

my $USAGE = "Usage: perl exc1306.pl <from file name> <to file name>\n";

my $from = $ARGV[0] // die $USAGE . "No <from> file name provided.\n";
die "'$from' doesn't exist. No link possible.\n" unless (-e $from);
my $to = $ARGV[1] // die $USAGE . "No <to> file name provided.\n";
die "'$to' already exists. No link possible.\n" if (-e $to);

print "Link '$from' to '$to'\n";
link $from => $to or warn "Link failed: $!\n";
