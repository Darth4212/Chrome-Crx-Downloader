#!/bin/bash
#
# A Simple Chrome .crx download script
#
#
extensionid="$1"
if [ "$1" == "-h" ]; then
  echo "Usage: `getcrx $0` This script is a edit of a script by wifiuk. You will run the command as such: ./getcrx.sh theextensionid outputname. You get the extensionid by looking at the url of the extension for example: https://chrome.google.com/webstore/detail/1password-password-manage/aomjjhallfgjeglblehebfpbcfeobpgk the last part of the url the aomjjhallfgjeglblehebfpbcfeobpgk is the id of the extension. The default location it is exported to is your Downloads folder."
  exit 0
fi
crx="$2"
wget -U --header="$USER" "https://clients2.google.com/service/update2/crx?response=redirect&prodversion=49.0&x=id%3D$extensionid%26installsource%3Dondemand%26uc" -O ~/Downloads/$crx
