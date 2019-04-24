#!/bin/sh

set -e # fail fast
set -x # print commands

git clone resource-gist updated-gist

cd updated-gist
echo $(date) > bumpme

git config --global user.email "sivutukuri@mix.wvu.edu"
git config --global user.name "sindhuja92"

git add .
git commit -m "Bumped date"
