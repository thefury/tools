#!/bin/bash

# Delete all merged branches from a local repository

# Usage: delmerged.sh

# Trevor Oke <trevor@trevoroke.com>

git checkout master
git branch --merged | grep -v '* ' | xargs git branch -D 

