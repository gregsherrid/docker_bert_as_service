FROM tensorflow/tensorflow:latest-py3
RUN pip install -U bert-serving-server[http]
COPY ./ /app
COPY ./docker/entrypoint.sh /app
RUN chmod +x /app/entrypoint.sh
WORKDIR /app
ENTRYPOINT ["/app/entrypoint.sh"]
CMD []