#!/bin/bash
wget https://image-net.org/data/ILSVRC/blurred/train_blurred.tar.gz
tar -xzvf train_blurred.tar.gz && rm -f train_blurred.tar.gz
rm train_blurred/n04266014/n04266014_10835.JPEG