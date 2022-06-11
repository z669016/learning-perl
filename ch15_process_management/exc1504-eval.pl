#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

my $run = 1;
my %signals;

sub record_signal {
    my $name = $_[0];
    $signals{$name} += 1;
}

chomp(my $kill = `kill -l`);
my @signal_names = split(/\s+/, $kill);
foreach (@signal_names) {
    my $func_name = "signal_" . lc($_);

    eval "sub $func_name { record_signal('$_');" . ($_ eq "INT" ? "\$run = 0;" : "") . "}";
    eval "\$SIG{'$_'} = '$func_name';";
}

print "[exc1504 version 2.0]\n";
print "Loop forever to record unix signals to this process (pid = $$).\n";
print "The process will stop using 'kill -INT $$\' or 'kill -KILL $$\'.\n";

while ($run) {
    # intentionally empty loop
}

for my $key (sort keys %signals) {
    print "Signal $key was called $signals{$key} time(s).\n";
}
