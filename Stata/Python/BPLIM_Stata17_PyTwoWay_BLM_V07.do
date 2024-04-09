// BPLIM - Packages to be installed inside a container
// V05 - August, 2023

import delimited "/mnt/cephfs/home/exu0o9@bdp.pt/.secrets/CREDENTIALS.txt", varnames(1) clear
	local USER = user[1]
	local SECRET = secret[1]
	local HOST = host[1]
	local PORT = port[1]

      set httpproxy        on
      set httpproxyhost    "`HOST'"
      set httpproxyport    `PORT'
      set httpproxyauth    on
      set httpproxyuser    "`USER'"
      set httpproxypw      "`SECRET'"

	set timeout1 10000
	set timeout2 10000

    sysdir set PLUS "plus"
    ssc install require
    
    //ssc install adoinstall
* # 0. Install 'adoinstall'
**require adoinstall, install from("https://raw.githubusercontent.com/labordynamicsinstitute/ssc-mirror/2024-01-15/fmwww.bc.edu/repec/bocode/a") adopath("plus")

// IF A FILE requirements.txt ALREADY EXISTS UNCOMMENT THE FOLLOWING LINE AND COMMENT FROM LINE 26
**require using requirements.txt, install adopath("plus")

*
* # 1. Install 'gtools'
require gtools, install from("https://raw.githubusercontent.com/labordynamicsinstitute/ssc-mirror/2024-01-15/fmwww.bc.edu/repec/bocode/g") adopath("plus")


* # 2. Install 'ftools' (remove program if it existed previously)
require ftools, install from("https://raw.githubusercontent.com/labordynamicsinstitute/ssc-mirror/2024-01-15/fmwww.bc.edu/repec/bocode/f") adopath("plus")


* # 3. Install 'reghdfe' & 'ppmlhdfe'
	require reghdfe, install from("https://raw.githubusercontent.com/sergiocorreia/reghdfe/master/src/") adopath("plus")

	adoinstall ppmlhdfe, install from("https://raw.githubusercontent.com/sergiocorreia/ppmlhdfe/master/src/") adopath("plus")


* # 4. Install 'panelstat'
	require panelstat,from("https://github.com/BPLIM/Tools/raw/master/ados/General/panelstat/") adopath("plus")


* # 5. Additional packages

local pk = "egenmore group2hdfe group3hdfe estout ivreg2 ranktest"

foreach pp of local pk {
local first = substr("`pp'",1,1)
sleep 2000
capture require `pp', install from("https://raw.githubusercontent.com/labordynamicsinstitute/ssc-mirror/2024-01-15/fmwww.bc.edu/repec/bocode/`first'") adopath("plus")
}


