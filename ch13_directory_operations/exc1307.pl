#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

my $USAGE = "Usage: perl exc1307.pl {-s} <from file name> <to file name>\n";
my $soft = $ARGV[0] eq "-s";
if ($soft == 1) {
    print "Creating a soft link\n";
    shift @ARGV;
}

my $from = $ARGV[0] // die $USAGE . "No <from> file name provided.\n";
die "'$from' doesn't exist. No link possible.\n" unless (-e $from);
my $to = $ARGV[1] // die $USAGE . "No <to> file name provided.\n";
die "'$to' already exists. No link possible.\n" if (-e $to);

print "Link '$from' to '$to'\n";
if ($soft == 1) {
    symlink $from => $to or warn "Soft link failed: $!\n";
} else {
    link $from => $to or warn "Link failed: $!\n";
}
