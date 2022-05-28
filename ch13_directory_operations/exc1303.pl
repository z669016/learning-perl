#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
use Cwd;

printf "Current working directory is %s\n", getcwd;

print "Enter a directory name: ";
chomp(my $dirname = <>);
if (length($dirname)) {
    chdir $dirname or die "Cannot change current directory to $dirname: $!";
} else {
    chdir;
}

print "Folder: ", getcwd, "\n";
opendir my $folder, "./";
foreach (readdir $folder) {
    print $_, "\n" if /\A[^.]/;
}
