#!/bin/sh

if [ $1 -ge 1 ];then
bert-serving-start -cpu -model_dir /model -http_port 3011 -num_worker=$2 -tuned_model_dir /tuned_model -ckpt_name=$3 -http_port 3011
else
bert-serving-start -cpu -num_worker=$2 -model_dir /model -http_port 3011
fi