// BPLIM - Packages to be installed inside a container
// V05 - August, 2023

global DIR = c(pwd)

capture import delimited "${DIR}/PROXY.txt", varnames(1) clear
capture local USER = info[1]
capture local SECRET = info[2]
capture local HOST = info[3]
capture local PORT = info[4]
capture count

if r(N) == 4 {
      set httpproxy        on
      set httpproxyhost    "`HOST'"
      set httpproxyport    `PORT'
      set httpproxyauth    on
      set httpproxyuser    "`USER'"
      set httpproxypw      "`SECRET'"
}

    sysdir set PLUS "plus"
    ssc install adoinstall
clear

* # 1. Install 'gtools'
	adoinstall gtools,from("https://raw.githubusercontent.com/mcaceresb/stata-gtools/master/build/") to(plus)


* # 2. Install 'ftools' (remove program if it existed previously)
	adoinstall ftools,from("https://raw.githubusercontent.com/sergiocorreia/ftools/master/src/") to(plus)


* # 3. Install 'reghdfe' & 'ppmlhdfe'
	adoinstall reghdfe, from("https://raw.githubusercontent.com/sergiocorreia/reghdfe/master/src/") to(plus)

	adoinstall ppmlhdfe, from("https://raw.githubusercontent.com/sergiocorreia/ppmlhdfe/master/src/") to(plus)

* # 4. Install 'panelstat'
	adoinstall panelstat,from("https://github.com/BPLIM/Tools/raw/master/ados/General/panelstat/") to(plus)

* # 5. Additional packages

local pk = "egenmore group2hdfe group3hdfe estout ivreg2 ranktest"

di "`pk'"

foreach pp of local pk {
	di _n(1) "ADO: `pp'"
	ssc install `pp', replace
}
