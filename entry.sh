#!/bin/bash
cd /FaceTracker Pro
python3.6 facetracker.py --docker --name "Emeraude"

#now copy the result
yes | cp -rf /FaceTracker Pro/*.pdf /result/
