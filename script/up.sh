NUM_WORKER=1
PATH_MODEL=/Users/greg_work/WhooosReading/bert-as-service/models/uncased_base
docker run -it -p 5555:5555 -p 5556:5556  -p 3011:3011 -v /Users/greg_work/WhooosReading/bert-as-service/models/uncased_base:/model -t bert-as-service 1