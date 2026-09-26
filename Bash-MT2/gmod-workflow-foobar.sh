#!/bin/bash

source ~/.env

ssh $MT1 /home/soders/Scripts/gmod-workflow-foobar.sh > /dev/null 2>&1&
