#! /bin/bash
# Copyright 2014 Cumulus Networks, Inc. All rights reserved.
# Author: Sean Cavanaugh, sean@cumulusnetworks.com
# https://github.com/CumulusNetworks/customer-scripts/blob/master/cumulus-ifplugd.sh
#
#       This file is used in the following:
#       Knowledge Base: https://support.cumulusnetworks.com/hc/en-us/articles/202971633-Deploying-VRRP-on-Cumulus-Linux
#

clear

echo "VRRPd Cumulus Linux Script running."

echo "going to wget https://raw.githubusercontent.com/CumulusNetworks/customer-scripts/master/01-manage-if-addrs"
wget https://raw.githubusercontent.com/CumulusNetworks/customer-scripts/master/01-manage-if-addrs
echo "going to move 01-manage-if-addrs to /etc/ifplugd/action.d/"
mv 01-manage-if-addrs /etc/ifplugd/action.d/01-manage-if-addrs
echo "going to sudo chmod oug+x /etc/ifplugd/action.d/01-manage-if-addrs"
sudo chmod oug+x /etc/ifplugd/action.d/01-manage-if-addrs
echo "going to sudo chmod oug-x /etc/ifplugd/action.d/ifupdown"
sudo chmod oug-x /etc/ifplugd/action.d/ifupdown

echo "VRRPd Cumulus Linux Script has now finished."
