#!/usr/bin/perl

$start = 1;
%students = ();
$count = 0;
while(defined($line = <>)) {
    if ($start == 1) {
        @k = split /;/, $line;
        $start = 0;
    } else {
        @student = split /;/, $line;
        $students{"$student[1] $student[2]"} = 0;
        foreach $s ($student[3], $student[4], $student[5], $student[6], $student[7], $student[8], $student[9]) {
            if ($s ne '-') {
                $students{"$student[1] $student[2]"} += $s*$k[$count]
            }
            $count += 1;
        }
    }
    $count = 0
    
}
$number = 1;
print("Lista po rangu:\n-----------------------------\n");
foreach $student (reverse sort { $students{$a} <=> $students{$b} } keys %students) {
    print ("  $number. " . $student . ": " . $students{$student} . "\n");
    $number++;
}