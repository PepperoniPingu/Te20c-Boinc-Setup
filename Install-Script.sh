#! /bin/bash

apt-get install boinc-client -y
apt-get install screen -y

touch ./Start-WCG.sh
echo "#! /bin/bash" >> ./Start-WCG.sh
echo "screen -S WCG sudo boinc --attach_project http://www.worldcommunitygrid.org/  1142594_4f34e73e8c27f9d6d16b3f76a3e27031 --no_gui_rpc" >> ./Start-WCG.sh
chmod =rwx ./Start-WCG.sh

echo "~/Start-WCG.sh" >> ./.profile

./Start-WCG.sh
