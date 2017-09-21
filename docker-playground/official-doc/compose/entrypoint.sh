#!/bin/bash

echo "Testing"

if [ "$#" == 0 ]
then
  python app.py
fi

exec $@
