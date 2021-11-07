#! /bin/bash
if test $# -ne 1; then 
    echo 'Usage: build.sh <mod folder>'
else
    rm ./*.txt
    ls -ld $(find .) | grep -oh \./$1/[^_].*\.txt | xargs -I{} sh -c "cp {} ."
    ls -ld $(find .) | grep -oh \./stdlib/_.*\.txt | xargs -I{} sh -c "cat {}; echo ''" > furniture.txt
    ls -ld $(find .) | grep -oh \./stdlib/_.*\.txt | xargs -I{} sh -c "cat {}; echo ''" > spells.txt
    ls -ld $(find .) | grep -oh \./$1/_.*\.txt | xargs -I{} sh -c "cat {}; echo ''" >> furniture.txt
    ls -ld $(find .) | grep -oh \./$1/_.*\.txt | xargs -I{} sh -c "cat {}; echo ''" >> spells.txt
    ls -ld $(find .) | grep -oh \./$1/furniture\.txt | xargs -I{} sh -c "cat {}; echo ''" >> furniture.txt
    ls -ld $(find .) | grep -oh \./$1/spells\.txt | xargs -I{} sh -c "cat {}; echo ''" >> spells.txt
fi