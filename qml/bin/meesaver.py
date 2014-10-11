# MeeSaver by <aranel@aranelsurion.org>
# Imports
import time
import os
import random

# Variables
env = os.getenv("HOME")

# Settings
try:
  f = open(env + '/.meesaver', 'r')
  lines = f.readlines()
  wdir = lines[0].strip()
  sleep = lines[1].strip()
except IOError:
  wdir = '/home/user/MyDocs/.wallpapers/'
  sleep = "60"
  print "IOError: File not found, defaulting to .wallpapers and 60 seconds."

# Function selectwall()
def selectwall():
  try:
    w = filter(lambda x: x.endswith(('.png','.jpg')), os.listdir(wdir))
    wall = random.choice(w)
    os.system("gconftool --type string -s /desktop/meego/background/portrait/picture_filename " + wdir + wall)
  except:
    print "Error: Something went wrong."
  #print wall
  
# Main
while True:
  selectwall()
  time.sleep(int(sleep))
