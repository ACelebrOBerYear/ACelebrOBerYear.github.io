#!/bin/bash

set -e


rm -rf public


hugo -t even # if using a theme, replace with `hugo -t <YOURTHEME>`

# 进入打包文件夹
cd public

# Add changes to git.

git init
git add -A

# Commit changes.
msg="building site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"


git push -f git@github.com:ACelebrOBerYear/ACelebrOBerYear.github.io.git master


cd ..