#!/bin/bash
echo "First run setup..."
/lms/first-run.sh
mv /lms/first-run.sh /lms/first-run.sh.done
getent group audio
groupmod -g $AUDIOGROUP audio
/usr/bin/start-container
