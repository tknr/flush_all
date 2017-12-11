#!/bin/bash
export IFS=$'\n'
git add . || exit 1
git commit -m "`date`" || exit 1
git push || exit 1
