#!/usr/bin/perl

$day = undef;
$hour = "00";
$count = 0;
while (defined($line = <>)) {
    $_ = $ARGV;
    if (m/([0-9]{4}-[0-9]{2}-[0-9]{2})/) {
        if ($day ne $1) {
            if($hour eq "23") {
                print ("   " . $hour . " : " . $count . "\n");
            }
            print "\n\nDatum: " . $1 . "\n";
            print "sat : broj pristupa\n----------------------------\n";
            $day = $1
        }
    }
    @fields = split /\s+/, $line;
    @fields1 = split /:/, $fields[3];
    if ($fields1[1] ne $hour) {
        if($hour ne "23") {
            print ("   " . $hour . " : " . $count . "\n");
        }
        $hour = $fields1[1];
        $count = 0;
    }
    $count += 1;
}
print ("   " . $hour . " : " . $count . "\n");
