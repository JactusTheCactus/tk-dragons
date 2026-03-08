#!/usr/bin/env tclsh
proc xor {a b} {
	return [expr $a ^ $b]
}
if false {
	puts "argc: $argc"
	puts "argv: $argv"
	puts {}
}
if [expr $argc >= 2] {
	set a [lindex "$argv" 0]
	set b [lindex "$argv" 1]
	if [expr $a ^ $b] {
		global a
		global b
		puts "xor($a, $b)"
	} else {
		global a
		global b
		puts "!xor($a, $b)"
	}
}
