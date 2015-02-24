#!/bin/sh
export LANG=C
sudo spacewalk-report errata-systems| tail -n +2|sort -k1 -t","> errata_systems
sudo spacewalk-report errata-list-all|grep Security|tail -n +2|awk -F, '{print $1","$2","$3","$NF}'|sort -k1 -t ","> errata_all
echo "hostname,ip,errata,synopsis" > /tmp/errata-report-latest.csv
join -t, -1 1 -2 1 errata_systems errata_all|awk -F, '{print $3","$5","$1","$NF}' 2>/dev/null 1>/tmp/errata-report-latest.csv
rm errata_all errata_systems