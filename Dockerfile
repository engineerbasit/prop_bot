FROM rasa/rasa:latest

COPY app /app
COPY server.sh /app/server.sh

USER root

RUN rasa train
RUN chmod a+rwx /app/server.sh

ENTRYPOINT ["/app/server.sh"]
