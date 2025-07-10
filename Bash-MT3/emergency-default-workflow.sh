#!/bin/bash

source ~/.env

~/Scripts/default-workflow.sh
ssh $MT1 ~/Scripts/default-workflow-for-mt3.sh & ssh $PM ~/Scripts/default-workflow-for-mt3.sh

ssh $MT1 ~/Scripts/lock.sh & ssh $PM ~/Scripts/lock.sh

xscreensaver-command -activate