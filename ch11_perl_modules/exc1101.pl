#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

use Module::CoreList qw / /;

my @versions = sort keys %Module::CoreList::version;
print "The available perl versions are:\n", join("\t\n", @versions), "\n\n";

my $version = $versions[-1];
print "The modules for the latest version $version are:\n";

my %modules = %{ $Module::CoreList::version{$version} };

foreach my $key (sort keys %modules) {
    printf "%s => %s\n", $key, $modules{$key};
}
