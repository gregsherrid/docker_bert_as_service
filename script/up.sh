#Used for entrypoint
TYPE=0

#Number of workers. If using CPU then recommend using 1
NUM_WORKER=1

#Full path to the Base model. Needs to be changed for path on your computer
PATH_MODEL=/Users/liambardong/Documents/Summer_2019/Whooos_Reading/BERT_Project/docker_bert_as_service/tmp/

#Runs docker passing the arguements above.
docker run -it -p 5555:5555 -p 5556:5556  -p 3011:3011 -v /Users/liambardong/Documents/Summer_2019/Whooos_Reading/BERT_Project/docker_bert_as_service/tmp/model:/model -t bert-as-service $TYPE $NUM_WORKER