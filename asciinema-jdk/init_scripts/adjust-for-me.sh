#!/bin/bash

apt install -y vim sudo

NEW_USERNAME=${NEW_USERNAME:-your_username}
echo "Creating username: $NEW_USERNAME"
groupadd -r $NEW_USERNAME && useradd -r -g $NEW_USERNAME $NEW_USERNAME && usermod -aG sudo $NEW_USERNAME
mkdir -p /home/$NEW_USERNAME
cp -r /root/\.* /home/$NEW_USERNAME
chown -R $NEW_USERNAME:$NEW_USERNAME /home/$NEW_USERNAME