#!/bin/bash

# start message
echo "Started installing"
echo ""

# save old directory, then cd into temp
old_dir = $(pwd)
cd /tmp/

# download install data, unzip, and cd
wget https://github.com/LemonLauncherMC/Launcher/releases/download/tests/LemonLauncherInstallData.zip
unzip LemonLauncherInstallData.zip
cd LemonLauncherInstallData

# unzip data and run install script
unzip data.zip
chmod +x install.sh
./install.sh

# cleanup
cd ..
rm LemonLauncherInstallData.zip
rm -rf LemonLauncherInstallData

# cd back
cd old_dir

# done message
echo ""
echo "Done!"
