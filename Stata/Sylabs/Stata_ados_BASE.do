// BPLIM - BASE packages to be installed inside a container with Stata
// V01 - November 2023

import delimited "CREDENTIALS.txt", varnames(1) clear
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
* # 1. Install 'gtools'
require gtools, install from("https://raw.githubusercontent.com/labordynamicsinstitute/ssc-mirror/2023-10-25/fmwww.bc.edu/repec/bocode/g") adopath("plus")


* # 2. Install 'ftools'
require ftools, install from("https://raw.githubusercontent.com/labordynamicsinstitute/ssc-mirror/2023-10-25/fmwww.bc.edu/repec/bocode/f") adopath("plus")


* # 3. Additional packages

local package = "egenmore estout"

foreach pk of local package {
local first = substr("`pk'",1,1)
sleep 2000
capture require `pk', install from("https://raw.githubusercontent.com/labordynamicsinstitute/ssc-mirror/2023-10-25/fmwww.bc.edu/repec/bocode/`first'") adopath("plus")
}
