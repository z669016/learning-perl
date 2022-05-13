use strict;
use warnings FATAL => 'all';

sub read_line {
    my $line = <>;
    if (defined($line)) {
        chomp($line);
    }

    $line;
}

my $line;
my %word_count;

print "Enter a few strings and end with an empty line (enter):\n";
$line = read_line();
while (defined($line) && length($line) != 0) {
    if (!exists($word_count{$line})) {
        $word_count{$line} = 1;
    } else {
        $word_count{$line} += 1;
    }
    $line = read_line();
}

foreach my $key (sort keys %word_count) {
    printf "$key => $word_count{$key}\n";
}

