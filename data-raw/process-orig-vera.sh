#! /bin/bash
# URL of zip file
orig=https://www.ohei2.de/FTP/vera78.zip
vf=`basename $orig`
wget $orig
# unzip, remove extra stuff, convert to UTF8,
# change EOL to Unix LF, and remove empty lines
unzip -ac $vf vera.1 | \
	awk '!/^\S+: |^[ \n] |^\*\*\*|^%{1,}|^$/' | \
	iconv -f ISO-8859-1 -t UTF-8 | \
	tr -d '\r' | \
	sed '/^[[:space:]]*$/d' > vera-utf8.txt
# cleanup
rm $vf
