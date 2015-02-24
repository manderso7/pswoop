#!/bin/bash
echo 192.168.193.70 pcispacewalk.pss.com pcispacewalk >> /etc/hosts
zypper --non-interactive in rhnsd-5.0.14-9.1.x86_64.rpm zypp-plugin-spacewalk-0.9.8-3.1.x86_64.rpm rhn-client-tools-2.1.16-3.1.noarch.rpm rhn-setup-2.1.16-3.1.noarch.rpm rhn-check-2.1.16-3.1.noarch.rpm rhncfg-5.10.65-8.2.noarch.rpm rhncfg-client-5.10.65-8.2.noarch.rpm rhncfg-actions-5.10.65-8.2.noarch.rpm python-jabberpy-0.5-0.17.1.x86_64.rpm osad-5.11.33-4.1.noarch.rpm
./bootstrap-ps.sh
/etc/init.d/osad start && rhn-actions-control --enable-all
