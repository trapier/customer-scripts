# Cumulus Linux® Bootcamp Source Code (enablement)


## Overview

This repo contains the full source code for the **Enablement** team at Cumulus Networks® automation training modules, these are primarily used for education by Cumulus Network Technial Trainers and Consultants

## Usage

The Cumulus Networks® [Bootcamp](http://cumulusnetworks.com/training-and-services/) uses the code provided by this git repo for education on Automation Tools.  The Cumulus Networks® Enablement team uses the Cumulus® **Workbench** to give students the ability to gets hand on training during Bootcamps. The Cumulus® Workbench consists of a single pre-provisioned Ubuntu virtual machine and multiple switches running Cumulus Linux.  More details on the Cumulus® Workbench can be found on the [User Guide](https://support.cumulusnetworks.com/hc/en-us/articles/203005993-Cumulus-Workbench-User-Guide)

![enter image description here](https://support.cumulusnetworks.com/hc/en-us/article_attachments/201165908/figure1.png)

Primarily the Bootcamp covers material on Ansible and Puppet with OSPF Unnumbered.  The two publicly facing demos have KBs
 
 - [OSPF Unnumbered with Ansible](https://support.cumulusnetworks.com/hc/en-us/articles/202110186)
 - [OSPF Unnumbered with Puppet](https://support.cumulusnetworks.com/hc/en-us/articles/202543888-Demo-OSPF-Unnumbered-Using-Puppet-in-the-Cumulus-Workbench)
 
Instructions for additional demos are hosted on the [Knowledge Base](https://support.cumulusnetworks.com/hc/en-us/sections/200398866-Demos-and-Training).

### Requirements

Any system capable of running Ansible, Puppet and git can run the code provided here.

 - [Ansible Installation](http://docs.ansible.com/intro_installation.html)
 - [Puppet Installation](https://docs.puppetlabs.com/guides/install_puppet/pre_install.html)
 - [Git Installation](http://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

### Preparing Your Environment

Install the git and dpkg tools:

	julia@devhost:~$ sudo apt-get install git apt-utils dpkg-dev
	julia@devhost:~$ git clone git@github.com:CumulusNetworks/enablement.git
	
---

![Cumulus icon](http://cumulusnetworks.com/static/cumulus/img/logo_2014.png)

### Cumulus Linux

Cumulus Linux is a software distribution that runs on top of industry standard networking hardware. It enables the latest Linux applications and automation tools on networking gear while delivering new levels of innovation and ﬂexibility to the data center.

For further details please see: [cumulusnetworks.com](http://www.cumulusnetworks.com)
