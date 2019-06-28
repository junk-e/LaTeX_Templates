#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)

if [ ! -f $SCRIPT_DIR/main.tex ]; then
  rm -rf .git
  cat .gitignore > .gitignore_temp
  echo > .gitignore
  git init
  git add .gitignore
  git commit -m '[INIT] Initialize repository'
  cat .gitignore_temp > .gitignore
  echo initrepo.sh >> .gitignore
  mkdir $SCRIPT_DIR/figure
  mkdir $SCRIPT_DIR/sections
  mv $SCRIPT_DIR/reports/main* $SCRIPT_DIR
  mv $SCRIPT_DIR/reports/sections/* $SCRIPT_DIR/sections/
  rm -rf $SCRIPT_DIR/reports
  git add .
  git commit -m '[UPDATE] Deploy templates for reports'
  echo "Initialization was completed"
else 
  echo "Initialization was already completed"
fi
