#! /bin/bash

apt-get install boinc-client -y
apt-get install screen -y

touch ~/Start-WCG.sh
echo "#! /bin/bash" >> ~/Start-WCG.sh
echo "sudo screen -S WCG boinc --attach_project http://www.worldcommunitygrid.org/  1142594_4f34e73e8c27f9d6d16b3f76a3e27031 --no_gui_rpc" >> ~/Start-WCG.sh
chmod =rwx ~/Start-WCG.sh

touch /etc/rc.local
echo "#! /bin/bash" >> /etc/rc.local
echo "~/Start-WCG.sh" >> /etc/rc.local
echo "exit 0" >> /etc/rc.local

~/Start-WCG.sh
