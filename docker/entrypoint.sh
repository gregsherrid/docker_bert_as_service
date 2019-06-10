#!/bin/sh
bert-serving-start -cpu -num_worker=$1 -model_dir /model -http_port 3011