#!/bin/bash

(crontab -l; ./generate-cronjob-line.sh) | crontab -
