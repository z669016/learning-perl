#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

my $home = $ENV{"HOME"};
chdir $home or die "Cannot change working directory to '",$home, "'";

system "ls -l";