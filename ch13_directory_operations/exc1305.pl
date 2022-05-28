#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
use File::Spec::Functions;

my $USAGE = "Usage: perl exc1305.pl <from file name> <to file name>\n";

my $from = $ARGV[0] // die $USAGE . "No <from> file name provided.\n";
die "'$from' doesn't exist. No rename possible.\n" unless (-e $from);
my $to = $ARGV[1] // die $USAGE . "No <to> file name provided.\n";

$to = catfile($to, $from) if (-d $to);

print "Renaming '$from' to '$to'\n";
rename $from => $to or warn "Renaming failed: $!\n";