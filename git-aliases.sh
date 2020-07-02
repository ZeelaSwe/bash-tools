#!/bin/bash

# Set up global git aliases
git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"
git config --global alias.last 'log -1 HEAD'
git config --global alias.unstage 'reset HEAD --'

