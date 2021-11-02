#! /bin/bash
if test $# -ne 1; then 
    echo 'Usage: build.sh <mod folder>'
else
    ls -ld $(find .) | grep -oh \./stdlib/_.*\.txt | xargs -I{} sh -c "cat {}; echo ''" > furniture.txt
    ls -ld $(find .) | grep -oh \./$1/_.*\.txt | xargs -I{} sh -c "cat {}; echo ''" >> furniture.txt
    ls -ld $(find .) | grep -oh \./$1/[^_].*\.txt | xargs -I{} sh -c "cp {} ."
fi