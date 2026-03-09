#!/usr/bin/env wish
set title {Dragons!}
set dragons {
	a
	b
	c
}
wm attributes . -fullscreen 1
wm title . $title
pack [label .title \
	-background silver \
	-text $title \
	-relief ridge \
	-borderwidth 3
] -fill x
pack \
	[button .quit \
		-text {Quit} \
		-command {destroy .}
	] \
	-side right \
	-anchor n
set i 0
foreach d $dragons {
	pack [label .d$i \
		-background silver \
		-text $d \
		-relief ridge \
		-borderwidth 3
	] -anchor w
	set i [expr $i + 1]
}
