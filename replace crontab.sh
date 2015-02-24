crontab -r
(crontab -l ; echo "0 1 * * * nice -19 /usr/bin/aide -C") | crontab -