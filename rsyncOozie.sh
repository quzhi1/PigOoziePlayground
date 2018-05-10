#!/bin/bash
rsync -a --exclude=.idea --exclude=.git --exclude=*.iml\
 --progress ./src/main/oozie/ zhiqu@gwbl825n01.blue.ygrid.yahoo.com:~/