#!/bin/bash

crontab $CRONTAB_FILE
cat $CRONTAB_FILE
echo "crontab installed"
cron -f
