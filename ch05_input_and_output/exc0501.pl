use 5.10.0;
use strict;
use warnings FATAL => 'all';

while (@ARGV > 0) {
    my $filename = pop;
    my $file;
    open $file, "<", $filename or die "Could not open ${filename} - $!";

   print reverse <$file>;
}