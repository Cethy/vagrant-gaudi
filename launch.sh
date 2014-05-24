#!/bin/bash

echo "Build VM"
vagrant up

echo "Start environment"
vagrant ssh -c "cd /var/fleet;sudo gaudi"

echo "go to http://192.168.33.10/"
