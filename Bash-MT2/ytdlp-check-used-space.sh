#!/bin/bash

du -sh ~/Videos/YouTube/ | cut -f 1
# du -csh ~/Videos/YouTube/ | awk 'END{print $1}'
