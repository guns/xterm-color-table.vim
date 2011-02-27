#!/usr/bin/env perl
#
# Query terminal directly for xterm color values.
# https://github.com/trapd00r/Term-ExtendedColor-Xresources

use strict;
use Term::ExtendedColor::Xresources qw[get_xterm_color];

my %table = %{ get_xterm_color({ index => [0..255], type => 'hex' }) };

foreach my $k (sort { $a <=> $b } (keys %table)) {
    print "$k #$table{$k}{rgb}\n";
}
