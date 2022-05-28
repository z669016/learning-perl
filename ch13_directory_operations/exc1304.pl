#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

my @to_delete = glob "@ARGV";
print "@to_delete\n";

foreach (@to_delete){
    if (-d $_) {
        print "Removing folder $_\n";
        # rmdir $_ or warn "Could not remove folder $_: $!\n";
    } else {
        print "Removing file $_\n";
        # unlink $_ or warn "Could not delete file $_: $!\n";
    }
}

