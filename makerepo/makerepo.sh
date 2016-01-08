#!/bin/bash

# makerepo [repo_name] [public/private]


# check if keys have been added
if [[ $(ssh-add -l | grep -q github ) == 1 ]]
then
    ssh-add ~/.ssh/github
fi

if [[ $(ssh-add -l | grep -q bitbucket ) == 1 ]]
then
    ssh-add ~/.ssh/bitbucket
fi

git init
if [[ $2 == 'public' ]]
then
    git remote add origin ssh://git@bitbucket.org/bcopos/$1.git
elif [[ $2 -eq 'private' ]]
then
    git remote add origin ssh://git@github.com/bcopos/$1.git
else
    echo "Should it be public or private?"
fi
