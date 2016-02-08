#!/bin/bash
# export VERSIONER_PYTHON_VERSION=2.6

if [ -z $1 ]
then
	PORT=8000
else
	PORT=$1
fi

sudo python web/manage.py runserver 0.0.0.0:$PORT
