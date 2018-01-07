#!/usr/bin/env bash
mkdir -p de en
( 
	cd de 
	wget -Lr -np -nH --cut-dirs=4 https://www.marxists.org/deutsch/philosophie/hegel/phaenom/index.htm
	for i in *.htm; do w3m -dump $i > ${i/htm/txt} ; done
)
( 
	cd en 
	wget -Lr -np -nH --cut-dirs=5 https://www.marxists.org/reference/archive/hegel/works/ph/phconten.htm
	for i in *.htm; do w3m -dump $i > ${i/htm/txt} ; done
)
