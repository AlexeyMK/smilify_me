# Takes a photo of the user every 5 minutes
# saving the result in a shared dropbox folder
# Assumptions:
#   Dropbox installed in default location
#   OS X
#   we've already installed the imagesnap executable 
#   Python installed and available via 'python'
# 
# Written for Smilify.me from HackNY Fall 2011
# by @alexeymk

from subprocess import call
from time import sleep, gmtime, strftime
import os, sys

EVERY_N_MINUTES = 5

user_str = os.environ["USER"] 
folder_name = "webcam_recording_of_" + user_str
# TODO, here and below: windows and unix versions
folder_name_absolute = "/Users/%s/Dropbox/%s" % (user_str, folder_name)

# create folder in user's home Dropbox directory
if not os.path.exists(folder_name_absolute):
  os.makedirs(folder_name_absolute)
sleep(5) # make sure to give dropbox time to sync

# open chrome or other browser and instruct user to share this folder with you
call(["open", "http://www.dropbox.com/share_existing/" + folder_name])
sys.stderr.write("Alright, things seem to have started...")

while True:
  time_str = strftime("%Y-%m-%d.%H:%M:%S", gmtime())
  call(["./imagesnap", "%s/%s-%s.jpg" % (folder_name_absolute, user_str, time_str)])
  sleep(EVERY_N_MINUTES * 60)

# Note: To Kill, run "ps uax | grep python", find the process id, 
# and type "kill -9 <process_id>"
