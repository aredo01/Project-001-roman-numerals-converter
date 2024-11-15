#! /bin/bash
dnf update -y
yum install wget -y
dnf install python3 -y
dnf install python3-pip -y
pip3 install flask
dnf install git -y
cd /home/ec2-user
FOLDER="https://raw.githubusercontent.com/aredo01/Project-001-roman-numerals-converter/refs/heads/main/"
wget -P templates ${FOLDER}/templates/index.html
wget -P templates ${FOLDER}/templates/result.html
wget ${FOLDER}/app.py
python3 app.py

