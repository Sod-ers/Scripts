#!/bin/bash

source ~/.env

ssh -t $MT1 && ssh -t $PM
