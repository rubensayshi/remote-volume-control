#!/bin/bash

(crontab -l; $1/generate-cronjob-line.sh $1) | crontab -
