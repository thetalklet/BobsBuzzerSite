#!/bin/bash
cd "$(dirname "$0")"
mkdir -p .buzzersitedata
cd ".buzzersitedata"
curl -L -o app.py "https://raw.githubusercontent.com/thetalklet/BobsBuzzerSite/02608ba9dfd6f5c81611122bb0cee8d097cfa0e5/.buzzersitedata/app.py"
mkdir -p templates
cd templates
curl -L -o index.html "https://raw.githubusercontent.com/thetalklet/BobsBuzzerSite/refs/heads/main/.buzzersitedata/templates/index.html"
cd ..
cd ..
mv "Start Buzzer Site.command" .buzzleft.command
curl -L -o "Start Buzzer Site.command" "https://raw.githubusercontent.com/thetalklet/BobsBuzzerSite/02608ba9dfd6f5c81611122bb0cee8d097cfa0e5/Start%20Buzzer%20Site.command"
"$(dirname "$0")/Start Buzzer Site.command"
chmod u+x ./"Start Buzzer Site.command"
./"Start Buzzer Site.command"
