#!/usr/bin/perl

my %stat, $data, $key;

while (read (STDIN, $data, 8) == 8) {
	$stat{ unpack('Q<', $data) }++;
}
for $key (sort { $b <=> $a } keys %stat) {
	print $key, ' writes: ', $stat{$key}, " sectors\n";
}
