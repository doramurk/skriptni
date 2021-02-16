#!/usr/bin/perl

$prefiks = pop(@ARGV);
%dict = ();
while(defined($line = <>)) {
    @parts = split /\s+/, $line;
    foreach $part (@parts) {
        if(length($part) >= 4) {
            $part = lc substr($part, 0, $prefiks);
            if (exists $dict{$part}) {
                $dict{$part} += 1;
            } else {
                $dict{$part} = 1;
            }
        }
    }
}
foreach $p (sort keys %dict) {
    print("$p : $dict{$p}\n");
}