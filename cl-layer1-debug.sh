#!/bin/bash
# Copyright 2014 Cumulus Networks, Inc. All rights reserved.
# Author: Stanley Karunditu (stanleyk@cumulusnetworks.com)
# Layer 1 Troubleshooting Script
# Syntax:
#
# sudo cl-layer1-debug.sh [ifacename]
# Example:
#
# sudo cl-layer1-debug.sh swp1
#
#
die () {
  echo >&2 "$@"
  exit 1
}

[ "$#" -eq 1 ] || die "physical interface must be specified. e.g swp1."
[[ $1 == swp* ]] || die "physical interface must start with 'swp'"

# get platform type
echo "#### get platform type ####"
echo '-----------'
/usr/bin/platform-detect

# get name in hardware
regex_str="$1\s+"
hwiface=`/bin/egrep $regex_str /var/lib/cumulus/porttab | /usr/bin/awk '{ print $2 }'`

# get software version
echo "#### get software version ####"
echo '-----------'
cat /etc/lsb-release

# get sfp details
echo "###  get sfp details  ####"
echo '-----------'
ethtool -m $1

# get ip link show
echo "### ip link show ###"
echo '-----------'
/sbin/ip link show $1

#get running config
echo "#$####  get interface configuration details  of $1  ######"
echo '-----------'
/sbin/ifquery $1

## get kernel config
echo "######  get kernel config of $1 ######"
echo '-----------'
/sbin/ifquery -r $1

#get more details from hardware
echo "#### get further l1 details from hardware ($1 -> $hwiface )  ####"
echo '-----------'
bcmcmd=/usr/lib/cumulus/bcmcmd
if [ -f $bcmcmd ]; then
$bcmcmd port $hwiface
else
echo "bcmcmd command not present on this switch"
fi
