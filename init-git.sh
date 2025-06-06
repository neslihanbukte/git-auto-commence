#!/bin/bash

git init

touch .gitignore

git add .

read -p "Commit message: " commitMsg
git commit -m "$commitMsg"

read -p "Remote URL: " remoteUrl
git remote add origin "$remoteUrl"

read -p "Branch name: " branchName
git branch -M "$branchName"
git push -u origin "$branchName"
