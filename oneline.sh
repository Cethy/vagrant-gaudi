#!/bin/bash

echo "Clone the repo"
git clone https://github.com/Cethy/vagrant-gaudi.git

echo "Checkout the demo loadbalancer branch"
cd vagrant-gaudi/
git checkout demo.loadbalancer

echo "install ..."
./launch.sh
