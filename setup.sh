#! /bin/sh

rm -rf ./.git

git init
git checkout -b main
echo git remote add origin git@github.com:Raisess/${PWD##*/}
