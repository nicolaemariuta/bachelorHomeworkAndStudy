all: conversie sinteza simulare1 plasare rutare paduri simulare2 fizic verificare

conversie:
	vasy -I vhd -a -o -p multiplier
	vasy -I vhd -a -o -p multiplier_data
	vasy -I vhd -a -o -p multiplier_control

sinteza:
	boog multiplier_data multiplier_data
	boog multiplier_control	multiplier_control

simulare1:
	asimut -zd multiplier multiplier r1
	xpat -l r1

plasare:
	ocp -ring multiplier multiplier
	graal -l multiplier

rutare:
	nero -V -6  multiplier multiplier
	graal -l multiplier

paduri:
	genlib multiplier
	ring multiplier multiplier

simulare2:
	asimut -zd multiplier_pad multiplier r2
	xpat -l r2

fizic:
	s2r -r multiplier multiplier
	dreal -l multiplier

verificare:
	druc multiplier