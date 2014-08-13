#!/bin/bash

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