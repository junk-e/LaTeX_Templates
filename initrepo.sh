#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)

if [ ! -f $SCRIPT_DIR/main.tex ]; then
  rm -rf .git
  git init
  git add .gitignore
  git commit -m '[INIT] Initialize repository'
  mkdir $SCRIPT_DIR/figure
  mkdir $SCRIPT_DIR/sections
  mv $SCRIPT_DIR/reports/main* $SCRIPT_DIR
  mv $SCRIPT_DIR/reports/sections/* $SCRIPT_DIR/sections/
  rm -rf $SCRIPT_DIR/reports
  echo "Initialization was completed"
else 
  echo "Initialization was already completed"
fi
