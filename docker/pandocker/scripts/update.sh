#! /bin/bash

cd /code
git pull origin master > /git-pull.log

cd /pandocker
if [ -n "`cat /git-pull.log | grep "Updating"`" ]; then
  mix run -e Pandocker.run > /output/log.txt

  mv /code/doc.pdf /output/doc.pdf
fi
