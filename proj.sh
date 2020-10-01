#!/bin/bash

# Project specific aliases
alias g12='git checkout Dev-12.0'
alias gdelbranches='git branch --merged Dev-12.0 | grep -v Dev-12.0 | xargs git branch -d'
alias odoopullall='ls -A1 | grep ^odoo- | xargs -I dr git -C dr pull'
