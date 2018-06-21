#!/bin/bash

set -e -o pipefail

out=/tmp/out.md
rest=10

#echo '## Amplifiers' >> $out
curl 'http://www.ti.com/analog/docs/analogtechdoc_hh.tsp?viewType=mostuseful&rootFamilyId=57&familyId=57&docCategoryId=1&litCount=all' \
| html2text | grep  '](http:' | grep -v 'Read Abstract' | grep -e '\* \[' | grep 'ti.com/lit/' >> $out
sleep $rest

#echo '## Audio' >> $out
curl 'http://www.ti.com/analog/docs/audiotechdocs.tsp?sectionId=630&tabId=2704&viewType=mostuseful&rootFamilyId=376&familyId=376&docCategoryId=1&litCount=all' \
| html2text | grep  '](http:' | grep -v 'Read Abstract' | grep -e '\* \[' | grep 'ti.com/lit/' >> $out
sleep $rest

#echo '## Clock and Timing' >> $out
curl 'http://www.ti.com/analog/docs/analogtechdoc_hh.tsp?viewType=mostuseful&rootFamilyId=346&familyId=346&docCategoryId=1&litCount=all' \
| html2text | grep  '](http:' | grep -v 'Read Abstract' | grep -e '\* \[' | grep 'ti.com/lit/' >> $out
sleep $rest

#echo '## Data Converters' >> $out
curl 'http://www.ti.com/analog/docs/analogtechdoc_hh.tsp?viewType=mostuseful&rootFamilyId=82&familyId=82&docCategoryId=1&litCount=all' \
| html2text | grep  '](http:' | grep -v 'Read Abstract' | grep -e '\* \[' | grep 'ti.com/lit/' >> $out
sleep $rest

#echo '## Die and Wafer Services' >> $out
curl 'http://www.ti.com/analog/docs/analogtechdoc_hh.tsp?viewType=mostuseful&rootFamilyId=3658&familyId=3658&docCategoryId=1' \
| html2text | grep  '](http:' | grep -v 'Read Abstract' | grep -e '\* \[' | grep 'ti.com/lit/' >> $out
sleep $rest

#echo '## Interface' >> $out
curl 'http://www.ti.com/analog/docs/analogtechdoc_hh.tsp?viewType=mostuseful&rootFamilyId=361&familyId=361&docCategoryId=1&litCount=all' \
| html2text | grep  '](http:' | grep -v 'Read Abstract' | grep -e '\* \[' | grep 'ti.com/lit/' >> $out
sleep $rest

#echo '## Isolation' >> $out
curl 'http://www.ti.com/analog/docs/analogtechdoc_hh.tsp?viewType=mostuseful&rootFamilyId=897&familyId=897&docCategoryId=1' \
| html2text | grep  '](http:' | grep -v 'Read Abstract' | grep -e '\* \[' | grep 'ti.com/lit/' >> $out
sleep $rest

#echo '## Logic' >> $out
curl 'http://www.ti.com/logic/docs/techdocs.tsp?sectionId=452&tabId=2892&viewType=mostuseful&contentId=99668&rootFamilyId=1&familyId=1&docCategoryId=1&litCount=all' \
| html2text | grep  '](http:' | grep -v 'Read Abstract' | grep -e '\* \[' | grep 'ti.com/lit/' >> $out
sleep $rest

#echo '## Motor Drivers' >> $out
curl 'http://www.ti.com/analog/docs/analogtechdoc_hh.tsp?viewType=mostuseful&rootFamilyId=2004&familyId=2004&docCategoryId=1' \
| html2text | grep  '](http:' | grep -v 'Read Abstract' | grep -e '\* \[' | grep 'ti.com/lit/' >> $out
sleep $rest

#echo '## Non-Product' >> $out
curl 'http://www.ti.com/analog/docs/analogtechdoc_hh.tsp?viewType=mostuseful&rootFamilyId=2930&familyId=2930&docCategoryId=1' \
| html2text | grep  '](http:' | grep -v 'Read Abstract' | grep -e '\* \[' | grep 'ti.com/lit/' >> $out
sleep $rest

#echo '## Power Management' >> $out
curl 'http://www.ti.com/analog/docs/analogtechdoc_hh.tsp?viewType=mostuseful&rootFamilyId=64&familyId=64&docCategoryId=1&litCount=all' \
| html2text | grep  '](http:' | grep -v 'Read Abstract' | grep -e '\* \[' | grep 'ti.com/lit/' >> $out
sleep $rest

#echo '## RF & Microwave' >> $out
curl 'http://www.ti.com/analog/docs/analogtechdoc_hh.tsp?viewType=mostuseful&rootFamilyId=367&familyId=367&docCategoryId=1&litCount=all' \
| html2text | grep  '](http:' | grep -v 'Read Abstract' | grep -e '\* \[' | grep 'ti.com/lit/' >> $out
sleep $rest

#echo '## Sensors' >> $out
curl 'http://www.ti.com/analog/docs/analogtechdoc_hh.tsp?viewType=mostuseful&rootFamilyId=353&familyId=353&docCategoryId=1&litCount=all' \
| html2text | grep  '](http:' | grep -v 'Read Abstract' | grep -e '\* \[' | grep 'ti.com/lit/' >> $out
sleep $rest

#echo '## Space and High Reliability' >> $out
curl 'http://www.ti.com/analog/docs/analogtechdoc_hh.tsp?viewType=mostuseful&rootFamilyId=3498&familyId=3498&docCategoryId=1&litCount=all' \
| html2text | grep  '](http:' | grep -v 'Read Abstract' | grep -e '\* \[' | grep 'ti.com/lit/' >> $out
sleep $rest

#echo '## Switches and Multiplexers' >> $out
curl 'http://www.ti.com/analog/docs/analogtechdoc_hh.tsp?viewType=mostuseful&rootFamilyId=727&familyId=727&docCategoryId=1' \
| html2text | grep  '](http:' | grep -v 'Read Abstract' | grep -e '\* \[' | grep 'ti.com/lit/' >> $out
sleep $rest

#echo '## Wireless Communications' >> $out
curl 'http://www.ti.com/analog/docs/analogtechdoc_hh.tsp?viewType=mostuseful&rootFamilyId=2003&familyId=2003&docCategoryId=1&litCount=all' \
| html2text | grep  '](http:' | grep -v 'Read Abstract' | grep -e '\* \[' | grep 'ti.com/lit/' >> $out
sleep $rest

out2=ti-app-notes.md
echo "# Texas Instruments (TI) App Notes" > $out2
echo "This is a listing of all of the app notes available on TI's website." >> $out2
cat $out | sed 's/^[ \t]*//' | sort | uniq >> $out2

