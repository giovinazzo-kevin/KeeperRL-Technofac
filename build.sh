#! /bin/bash
if test $# -ne 1; then 
    echo 'Usage: build.sh <mod folder>'
else
    rm ./*.txt
    ls -ld $(find .) | grep -oh \./$1/[^_].*\.txt | xargs -I{} sh -c "cp {} ."

    ls -ld $(find .) | grep -oh \./stdlib/_.*\.txt | xargs -I{} sh -c "cat {}; echo ''" > furniture.txt
    ls -ld $(find .) | grep -oh \./stdlib/_.*\.txt | xargs -I{} sh -c "cat {}; echo ''" > spells.txt
    ls -ld $(find .) | grep -oh \./stdlib/_.*\.txt | xargs -I{} sh -c "cat {}; echo ''" > creatures.txt
    ls -ld $(find .) | grep -oh \./stdlib/_.*\.txt | xargs -I{} sh -c "cat {}; echo ''" > items.txt

    ls -ld $(find .) | grep -oh \./stdlib/furniture\.txt | xargs -I{} sh -c "cat {}; echo ''" >> furniture.txt
    ls -ld $(find .) | grep -oh \./stdlib/creatures\.txt | xargs -I{} sh -c "cat {}; echo ''" >> creatures.txt
    ls -ld $(find .) | grep -oh \./stdlib/spells\.txt | xargs -I{} sh -c "cat {}; echo ''" >> spells.txt
    ls -ld $(find .) | grep -oh \./stdlib/items\.txt | xargs -I{} sh -c "cat {}; echo ''" >> items.txt

    ls -ld $(find .) | grep -oh \./$1/_furniture_.*\.txt | xargs -I{} sh -c "cat {}; echo ''" >> furniture.txt
    ls -ld $(find .) | grep -oh \./$1/_spells_.*\.txt | xargs -I{} sh -c "cat {}; echo ''" >> spells.txt
    ls -ld $(find .) | grep -oh \./$1/_creatures_.*\.txt | xargs -I{} sh -c "cat {}; echo ''" >> creatures.txt
    ls -ld $(find .) | grep -oh \./$1/_items_.*\.txt | xargs -I{} sh -c "cat {}; echo ''" >> items.txt

    ls -ld $(find .) | grep -oh \./$1/furniture\.txt | xargs -I{} sh -c "cat {}; echo ''" >> furniture.txt
    ls -ld $(find .) | grep -oh \./$1/spells\.txt | xargs -I{} sh -c "cat {}; echo ''" >> spells.txt
    ls -ld $(find .) | grep -oh \./$1/creatures\.txt | xargs -I{} sh -c "cat {}; echo ''" >> creatures.txt
    ls -ld $(find .) | grep -oh \./$1/items\.txt | xargs -I{} sh -c "cat {}; echo ''" >> items.txt
fi