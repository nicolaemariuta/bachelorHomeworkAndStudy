all: conversie sinteza simulare1 plasare rutare paduri simulare2 fizic verificare

conversie:
	vasy -I vhd -a -o -p divider
	vasy -I vhd -a -o -p divider_data
	vasy -I vhd -a -o -p divider_control

sinteza:
	boog divider_data divider_data
	boog divider_control	divider_control

simulare1:
	asimut -zd divider divider r1
	xpat -l r1

plasare:
	ocp -ring divider divider
	graal -l divider

rutare:
	nero -V -6  divider divider
	graal -l divider

paduri:
	genlib divider_pad
	ring divider_pad divider_pad

simulare2:
	asimut -zd divider_pad divider_pad r2
	xpat -l r2

fizic:
	s2r -r divider_pad divider_pad
	dreal -l divider_pad

verificare:
	druc divider_pad
