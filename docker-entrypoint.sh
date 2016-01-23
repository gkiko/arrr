#!/bin/bash

set -e

if [ "$1" == "init" ]
then
	python3 arrr/runnarrr init
fi

python3 arrr/runnarrr server
