#!/bin/bash

source ~/.env
source ~/Programs/F5TTS/.env

~/miniconda3/bin/f5-tts_infer-gradio --port $port --host $host & exit
