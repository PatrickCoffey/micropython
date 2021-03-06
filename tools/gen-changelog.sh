#!/bin/sh

echo "Micro Python change log"

for t in $(git tag | grep -v v1.0-rc1 | sort -r); do
    echo ''
    echo '========'
    echo ''
    git show -s --format=%cD `git rev-list $t --max-count=1`
    echo ''
    git tag -l $t -n99
done
