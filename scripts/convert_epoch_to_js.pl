#!/usr/bin/perl

while (<>) {
    @arr = split(/\s+/, $_);

    $H{$arr[0]} .= "[ \"$arr[2]\", $arr[5], $arr[3] ],\n";
}

print "var dataset = {\n";
foreach $k ( sort keys %H ) {
    $k =~ /\d+/;
    $d = $& + 0.0;
    print "\"$d\" : [ $H{$k} ],\n";
}
print "};\n";
