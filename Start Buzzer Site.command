
#!/bin/bash
cd "$(dirname "$0")/.buzzersitedata"
python3 -m venv venv
source venv/bin/activate
pip3 install Flask
pip3 install flask
python3 app.py