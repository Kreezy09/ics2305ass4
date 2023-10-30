#!/usr/bin/bash
wrdcnt=$( cat 'JUJAyetu.txt' | tr -d [:space:] |wc -m )
echo "No of words: $wrdcnt"

# path = "/JUJAyetu.txt"

# wordCNT = `wc --word < $path`

# echo "No of words: $wordCNT"
