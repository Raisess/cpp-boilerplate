#! /bin/sh

rm -rf ./.git
read -p "Use git locale? [y/n] " lgit

if [ $lgit == "y" ]; then
  git init
  git checkout -b main

  remote_repo=${PWD##*/}
  read -p "Use git remote? (repository: $remote_repo) [y/n] " rgit
  read -p "Github username: " github_username

  if [ $rgit == "y" ]; then
    git remote add origin git@github.com:$github_username/$remote_repo
  fi
fi

rm -f ./setup.sh
