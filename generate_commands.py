#!/usr/bin/python2

import csv
import sys

# Which command to call - in this project, either \envelope or \invitation
cmd = raw_input()

# Call command on each entry of the guestlist
with open('guests.csv', 'rb') as csvfile:
    reader = csv.reader(csvfile)
    reader.next() # skip first line
    for row in reader:
        print '\\'+cmd + str().join(['{'+x.replace('#','\#')+'}' for x in row])
