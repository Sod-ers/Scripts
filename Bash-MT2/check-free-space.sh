#!/bin/bash

df --output=avail -h "$PWD" | sed '1d;s/[^0-9]//g'
