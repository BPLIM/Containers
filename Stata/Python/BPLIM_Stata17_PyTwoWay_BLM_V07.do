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
    
// IF A FILE requirements.txt ALREADY EXISTS UNCOMMENT THE FOLLOWING LINE AND COMMENT FROM LINE 26
**require using requirements.txt, install adopath("plus")

*
* # 1. Additional packages

local pk = "gtools ftools egenmore group2hdfe group3hdfe estout ivreg2 ranktest reghdfe"

foreach pp of local pk {
local first = substr("`pp'",1,1)
sleep 2000
capture require `pp', install from("https://raw.githubusercontent.com/labordynamicsinstitute/ssc-mirror/2024-01-15/fmwww.bc.edu/repec/bocode/`first'") adopath("plus")
}


* # 2. REQUIRE

require using /usr/local/stata/requirements.txt, list adopath(plus) replace

*/