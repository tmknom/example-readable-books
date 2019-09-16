#!/bin/sh
redpen --lang ja --format review --limit 0 --conf redpen-conf.xml \
articles/*.re > redpen.log || EXIT_CODE=$?

sed -i'' -e 's$^$articles/$' -e '$d' redpen.log

cat redpen.log | bin/reviewdog -reporter=github-pr-review \
  -diff='git --no-pager diff origin/master' \
  -efm='%f:%l: %m' \
  -name=RedPen

exit ${EXIT_CODE}
