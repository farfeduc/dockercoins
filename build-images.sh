#!/bin/bash

for dir in */; do docker build -t $(echo $dir | cut -d '/' -f 1):$(date '+%d%m%Y')-$1 $dir; done