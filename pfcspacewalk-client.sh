rm -f bootstrap-ps.sh
wget https://pfcspacewalk.payformance.net/pub/bootstrap/bootstrap-ps.sh --no-check-certificate
chmod +x bootstrap-ps.sh
sudo ./bootstrap-ps.sh
sudo rhn-actions-control --enable-all
sudo /etc/init.d/osad restart