#!/bin/bash

# Set up git user and email
git config --global user.name "Eugene Y. Sun"
git config --global user.email eug.sun@gmail.com

# Generate SSH
ssh-keygen -t rsa -C "eug.sun@gmail.com"

# Copy the key to clipboard
xclip -sel clip < "$HOME/.ssh/id_rsa.pub"

# Prompt to do github setup
echo "SSH pub key copied. Go paste it at github.com, and then press any key to continue..."
read INPUT

# Test connection
ssh-add
ssh -T git@github.com

