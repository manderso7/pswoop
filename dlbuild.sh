#!/bin/bash
# Argument = build number
# Pass argument to URL
# run dlbuild.sh mpaybuild activti build
if [ $# -eq 0 ]; then
    echo "No arguments provided"
    exit 1
fi
YMD=$(date +%Y%m%d)
mkdir ~/$YMD
cd ~/$YMD
OF=$YMD.zip

wget -r -l1 --no-parent -A.war http://jaxbuild1.payformance.net:8085/artifact/PECO-PES13/shared/build-$1/mpay.war/mpay_webapps/mpay/target/
wget -r -l1 --no-parent -A.war http://jaxbuild1.payformance.net:8085/artifact/PECO-PES13/shared/build-$1/exchange.war/mpay_webapps/exchange/target/
wget -r -l1 --no-parent -A.war http://jaxbuild1.payformance.net:8085/artifact/PECO-PES13/shared/build-$1/webapp.war/mpay_webapps/webapp/target/
wget -r -l1 --no-parent -A.jar http://jaxbuild1.payformance.net:8085/artifact/PECO-PES13/shared/build-$1/mpay_remote_server.jar/mpay_remote_server/target/
wget -r -l1 --no-parent -A.zip http://jaxbuild1.payformance.net:8085/artifact/PECO-PES13/shared/build-$1/mpay_conf.zip/mpay_conf/target/
wget -r -l1 --no-parent -A.war http://jaxbuild1.payformance.net:8085/artifact/PECO-PES13/shared/build-$1/rest.war/mpay_webapps/rest/target/
wget -r -l1 --no-parent -A.zip http://jaxbuild1.payformance.net:8085/artifact/PECO-PES13/shared/build-$1/mpay_dependencies.zip/mpay_dependencies/target/
find ./ -type f \( -name "*.war" -o -name "*.jar" -o -name "*.zip" \) -exec cp {} . \;
#find . -name "*.jar" -exec cp {} . \;
#find . -name "*.war" -exec cp {} . \;
#find . -name "*.zip" -exec cp {} . \;
zip $OF *.war *.jar *.zip
