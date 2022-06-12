#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

sub read_input_file {
    my $file_name = "./ch16_some_advanced_perl_techniques/sample.txt";
    my $file;
    open $file, "<", $file_name or die "Could not open ${file_name}: $!";

    my @file_content = <$file>;
    @file_content;
}

sub get_regexp {
    print "Enter a regular expression: ";
    chomp(my $regexp = <>);

    $regexp;
}

my @file_content = read_input_file;
while (1) {
    my $regexp = get_regexp;
    last if (!length($regexp) || lc($regexp) eq "quit ");

    my @selection = grep /$regexp/i, @file_content;
    print @selection, "\n\n";
}

print "Done.";