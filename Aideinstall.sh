#install aide
zypper in -y aide
#setup database
nice -19 aide -i
#rename database
mv /var/lib/aide/aide.db.new /var/lib/aide/aide.db
#get the first reading
nice -19 aide -C
#add aide to nightly crontab
(crontab -l ; echo "0 1 * * * nice -19 /usr/bin/aide -C") | crontab -