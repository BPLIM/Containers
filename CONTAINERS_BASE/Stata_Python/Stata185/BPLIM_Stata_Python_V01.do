// BPLIM - Packages to be installed inside a container
// V01 - April, 2024

// Comment here in case your firewall does not require a login and password
*
global PATH = "/mnt/cephfs/home/exu0o9@bdp.pt"
import delimited "${PATH}/.secrets/CREDENTIALS.txt", varnames(1) clear
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
*/

// END comment

	set timeout1 10000
	set timeout2 10000

    sysdir set PLUS "/usr/local/stata/ado/plus"
    ssc install require, replace
   
* BASE packages
! chmod -R 777 /usr/local/stata/ado/plus

    require using Stata_requirements.txt, install
