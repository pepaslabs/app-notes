#!/bin/bash

set -e -o pipefail

baseurl='https://www.keysight.com/main/facet.jspx?t=79940.g.3&pageType=tm&pageMode=LB&cc=US&lc=eng&sm=g'
out=hp-app-notes.md
rest=10

echo "# Hewlett Packard (HP) / Agilent / Keysight App Notes" > $out
echo "This is a listing of all of the app notes available on Keysight's website." >> $out

for i in `seq 0 25 3287`
do
    url="${baseurl}&no=${i}"
    echo "$url"
    curl --silent "$url" | tee /tmp/$i.html \
        | html2text -b 0 | grep redirector | grep ckey | grep 11143 | grep -v -e '&ml=' | sed 's/^/\* /' \
        >> $out
    sleep $rest
done

