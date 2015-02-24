#download rpm from pcispacewalk
wget https://pcispacewalk.pss.com/pub/nimsoft-robot.x86_64.rpm --no-check-credentials
#install rpm
rpm -ivh nimsoft-robot.x86_64.rpm
#create first config file
printf "domain =<Monitoring>\n hub = <NimBus>\n hubip = 192.168.103.20\n hubrobotname = <jaxpronimbus>\n hubport = <48002>\n robotip = $(hostname -i)" > /opt/nms-robot-vars.cfg
#Run configure
/opt/nimsoft/install/RobotConfigurer.sh
#create second config, w/ variables for hostname and IP address
printf "<controller>\n loglevel = 5\n logsize = 3000\n robotname = $HOST\n robotip = $(hostname -i)\n first_probe_port = 48000\n domain = Monitoring\n temporary_hub_broadcast = no\n hub_update_interval = 900\n system_uptime_qos = no\n local_ip_validation = no\n hub = NimBUS\n hubip = 192.168.103.20\n autoremove = no\n hubport = 48002\n robot_mode = normal\n access_0 = 0\n access_1 = 1\n access_2 = 2\n access_3 = 3\n access_4 = 4\n hubrobotname = jaxpronimbus\n </controller>" > /opt/nimsoft/robot/robot.cfg
#start nimbus
/etc/init.d/nimbus start

#download rpm from pcispacewalk
wget https://pfcspacewalk.payformance.net/pub/nimsoft-robot.x86_64.rpm --no-check-credentials
#install rpm
rpm -ivh nimsoft-robot.x86_64.rpm
#create first config file
printf "domain =<Monitoring>\n hub = <NimBus>\n hubip = 192.168.103.20\n hubrobotname = <jaxpronimbus>\n hubport = <48002>\n robotip = $(hostname -i)" > /opt/nms-robot-vars.cfg
#Run configure
/opt/nimsoft/install/RobotConfigurer.sh
#create second config, w/ variables for hostname and IP address
printf "<controller>\n loglevel = 5\n logsize = 3000\n robotname = $HOST\n robotip = $(hostname -i)\n first_probe_port = 48000\n domain = Monitoring\n temporary_hub_broadcast = no\n hub_update_interval = 900\n system_uptime_qos = no\n local_ip_validation = no\n hub = NimBUS\n hubip = 192.168.103.20\n autoremove = no\n hubport = 48002\n robot_mode = normal\n access_0 = 0\n access_1 = 1\n access_2 = 2\n access_3 = 3\n access_4 = 4\n hubrobotname = jaxpronimbus\n </controller>" > /opt/nimsoft/robot/robot.cfg
#start nimbus
/etc/init.d/nimbus start