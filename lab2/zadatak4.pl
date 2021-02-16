#!/usr/bin/perl

$startD = undef;
$startH = undef;
$lockD = undef;
$lockH = undef;

while (defined($line = <>)) {
    @fields = split /;/, $line;
    @start = split /\s+/, $fields[3];
    @startH = split /:/, $start[1];
    @lock = split /\s+/, $fields[4];
    @lockH = split /:/, $lock[1];
    if (($start[0] ne $lock[0]) || ($lockH[0]-1 > $startH[0]) || (($lockH[0]-1 == $startH[0]) && ($startH[1] < $lockH[1]))) {
        print("$fields[0] $fields[1] $fields[2]  - PROBLEM: $start[0] $start[1] --> $fields[4]");
    }
}
print "\n";