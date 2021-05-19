#!/bin/bash
echo "First run setup..."
/lms/first_run.sh
mv /lms/first_run.sh /lms/first_run.sh.done
getent group audio
groupmod -g $AUDIOGROUP audio
/usr/bin/start-container.sh
