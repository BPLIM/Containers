
      set httpproxy        on
      set httpproxyhost    XXXX
      set httpproxyport    XXXX
      set httpproxyauth    on
      set httpproxyuser    XXXX
      set httpproxypw      XXXX

    sysdir set PLUS "plus"
	
    ssc install adoinstall

* # 1. Install 'gtools'
adoinstall gtools,from(https://raw.githubusercontent.com/mcaceresb/stata-gtools/master/build/) to(plus)
gtools, upgrade

* # 2. Install 'ftools' (remove program if it existed previously)
adoinstall ftools,from(https://raw.githubusercontent.com/sergiocorreia/ftools/master/src/) to(plus)

* # 3. Install 'markstat

    ssc install markstat, replace
    ssc install whereis, replace
    ssc install moremata, replace
	
	whereis pandoc /usr/bin/pandoc
	whereis pdflatex /usr/bin/pdflatex
	
	copy https://www.stata-journal.com/production/sjlatex/stata.sty /opt/stata17/ado/plus/stata.sty
	
	
ssc install texdoc, replace
net from http://www.stata-journal.com/production
net install sjlatex
sjlatex install

* # 4. Additional packages

local pk = "egenmore estout ivreg2 lgraph moremata "

foreach pp of local pk {
    capture ssc install `pp'
}
