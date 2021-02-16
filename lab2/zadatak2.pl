#!/usr/bin/perl

chomp( @numbers = <STDIN> );
$sum = 0;
foreach (@numbers) {
    $sum  += $_;
}
print "\nAritmeticka sredina: ", ($sum/@numbers) . "\n";