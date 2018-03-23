#!/bin/bash

sudo dd if=/dev/zero of=/var/swap bs=1M count=4096
sudo mkswap /var/swap
sudo chmod 0600 /var/swap
sudo swapon /var/swap
sudo echo '/var/swap swap swap defaults 0 0' > /etc/fstab
