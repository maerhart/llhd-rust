#!/bin/bash
# Copyright (c) 2017 Fabian Schuiki
#
# This script checks the copyrights at the beginning of source files. Emits a
# patch to adjust the copyrights. Use as follows:
#
#     check-copyrights.sh | patch -p0

YEAR=$(date +%Y)
for FILE in $(find src -name "*.rs"); do
	sed -E "s/(Copyright \(c\) )[0-9]+(-[0-9]+)?/\12017-$YEAR/g" $FILE | diff -u $FILE -
done
