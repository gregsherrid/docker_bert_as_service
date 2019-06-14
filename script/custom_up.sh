#Used for entrypoint
TYPE=1


NUM_WORKER=1

#Full path to Base Model. Needs to changed for own use
PATH_MODEL=/Users/liambardong/Documents/Summer_2019/Whooos_Reading/BERT_Project/docker_bert_as_service/tmp/model

#Full path to pretrained model
PATH_TUNED_MODEL=/Users/liambardong/Documents/Summer_2019/Whooos_Reading/BERT_Project/docker_bert_as_service/pretraining

#name of the model from the pretrained model
PATH_CKPT_NAME=model.ckpt-20

#runs dockers with arguemnts made above
docker run -it -p 5555:5555 -p 5556:5556  -p 3011:3011 -v $PATH_MODEL:/model -v $PATH_TUNED_MODEL:/tuned_model -t bert-as-service $TYPE $NUM_WORKER $PATH_CKPT_NAME

