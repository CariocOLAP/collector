#!/bin/bash

BUS_FILES=$1

PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin

cd $BUS_FILES

zip -rm $(date +"%Y-%m-%d") $(date +"%Y-%m-%d")/*

rmdir $(date +"%Y-%m-%d")
