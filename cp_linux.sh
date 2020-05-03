#!/bin/bash

sudo apt-get install python3-pip --fix-missing
sudo python3.7 -m pip install pyinstaller --no-cache

rm -rf safira
cp safira.py safira.pyw
pyinstaller --onefile -windowed --icon=icone.png safira.pyw -w

mv dist/safira .
sudo chmod +x safira

rm safira.pyw
rm -rf dist/
rm -rf build/
rm -rf safira.spec
rm -rf typescript