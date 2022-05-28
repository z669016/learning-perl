#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

printf "Current working directory is %s\n", getcwd;

print "Enter a directory name: ";
chomp(my $dirname = <>);
if (length($dirname)) {
    chdir $dirname or die "Cannot change current directory to $dirname: $!";
} else {
    chdir;
}

my @files = glob "*";
foreach (@files) {
    print $_, "\n";
}
