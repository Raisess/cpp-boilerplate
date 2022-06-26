#! /bin/sh

read -p "Use git locale? [y/n] " lgit

if [ $lgit == "y" ]; then
  rm -rf ./.git
  git init
  git checkout -b main

  remote_repo=${PWD##*/}
  read -p "Use git remote? (repository: $remote_repo) [y/n] " rgit

  if [ $rgit == "y" ]; then
    git remote add origin git@github.com:Raisess/$remote_repo
  fi
fi

rm -f ./setup.sh
