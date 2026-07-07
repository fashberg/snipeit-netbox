#!/bin/bash
if [ ! "$SLEEP" ] ; then
    echo "setting default SLEEP to 3600"
    SLEEP="3600"
fi
while true ; do 
    echo "Running import"
    cd /app
    python main.py --allow-update --allow-linking --update-unique-existing
    echo "done, sleeping $SLEEP seconds"
    sleep $SLEEP
done
