#!/bin/bash

# So when starting master we don't have to specify anything
if [ "$SPARK_MASTER_IP" = "" ]; then
    SPARK_MASTER_IP=$(hostname --ip)
fi

if [ -z $1 ]; then
    echo "No command specified"
elif [ -e $SPARK_HOME/bin/$1 ]; then
    $SPARK_HOME/bin/$1 ${@:2}
elif [ -e $SPARK_HOME/sbin/$1 ]; then
    # For the scripts, we want to stay in foreground to prevent container exit
    $SPARK_HOME/sbin/$1 ${@:2}
else
    $@
fi
