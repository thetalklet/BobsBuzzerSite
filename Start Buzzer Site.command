#!/bin/bash

if ! cd "$(dirname "$0")/.buzzersitedata" 2>/dev/null; then
    mkdir -p "$(dirname "$0")/.buzzersitedata"
    cd "$(dirname "$0")/.buzzersitedata"
    curl -L -o app.py "https://raw.githubusercontent.com/thetalklet/BobsBuzzerSite/02608ba9dfd6f5c81611122bb0cee8d097cfa0e5/.buzzersitedata/app.py"
    mkdir -p templates
    cd templates
    curl -L -o index.html "https://raw.githubusercontent.com/thetalklet/BobsBuzzerSite/refs/heads/main/.buzzersitedata/templates/index.html"
    cd ..
fi

python3 -m venv venv
source venv/bin/activate
pip3 install flask
python3 app.py
