#!/usr/bin/python
# -*- coding: utf-8 -*-
# MeeSaver by <aranel@aranelsurion.org>
# Imports
import time
import os
import random
import subprocess, signal

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


import sys
from PySide.QtCore import *
from PySide.QtGui import *
from PySide.QtDeclarative import *

 
class Meesetting(QObject):
  def get_wdir(self):
    return wdir
  def get_sleep(self):
    return sleep
    
  wdir = Property(unicode, get_wdir)
  sleep = Property(unicode, get_sleep)
 
  @Slot(str,str)
  def save(self,wd,slp):
    print "Workingdir: " + wd + " | Sleep: " + slp
    if (len(wd) > 0 and len(slp) > 0):
      f = open (env + '/.meesaver', 'w')
      f.write (wd + '\n' + slp )
      f.close()
      
  
  @Slot()
  def killd(self):
    print "Stopping MeeSaver daemon"
    os.system("/opt/MeeSaver/bin/bin/kill.sh")

  @Slot()
  def startd(self):
    print "Starting MeeSaver daemon"
    os.system("/opt/MeeSaver/bin/bin/start.sh")
	
  @Slot()
  def addboot(self):
    print "Adding MeeSaver to start-up daemons"
    os.system("/opt/MeeSaver/bin/bin/addtoboot.sh")
    

  @Slot()
  def remboot(self):
    print "Removing MeeSaver from start-up daemons"
    os.system("/opt/MeeSaver/bin/bin/removefromboot.sh")


  

app = QApplication(sys.argv)
meesetting = Meesetting()
view = QDeclarativeView()

context = view.rootContext()
context.setContextProperty('meesetting', meesetting)

view.setSource(__file__.replace('.py', '.qml'))

view.showFullScreen()
app.exec_()
