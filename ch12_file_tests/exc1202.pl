#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

sub age_in_days {
    my $file_name = $_[0] // $_;

    if (-e $file_name) {
        my ($dev, $ino, $mode, $nlink, $uid, $gid, $rdev, $size, $atime, $mtime, $ctime, $blksize, $blocks) = stat($file_name);

        return int ((time - $ctime) / (24 * 60 * 60));
    }

    return -1;
}

my @file_list = @ARGV;
if (! @file_list) {
    print "Enter some file names, one per line, and end with an empty line:\n";
    while (1) {
        chomp(my $file_name = <STDIN>);
        last if ($file_name eq "");

        push(@file_list, $file_name);
    }
}

foreach (@file_list) {
    printf "File $_ is %d days old\n", age_in_days;
}