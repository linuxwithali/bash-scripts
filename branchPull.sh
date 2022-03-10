#!/bin/bash 

#Goal : GIT Branch Checkout and Pull,  Using Jenkins | Raw Script

cd /var/www/html/GIT/$folderName
currentBranch=`git rev-parse --abbrev-ref HEAD `
if [[ $Choice == 'checkoutBranch' ]]; then
    if [[  $currentBranch == $branchName ]]; then
        echo "already in same branch"
    else
        git checkout  $branchName
    fi
elif [[ $Choice == 'gitPull' ]]; then
    if [[  $currentBranch == $branchName ]]; then
        git pull origin $branchName
    else
        git checkout $branchName
        git pull origin $branchName
    fi
fi
