FROM krisgeus/docker-kafka

ENV KAFKA_OPTS="$KAFKA_OPTS -javaagent:/opt/jmxtrans-agent-1.2.6.jar=/opt/jmxtrans-agent.xml"
ADD jmxtrans-agent-1.2.6.jar /opt/
ADD jmxtrans-agent.xml /opt/

EXPOSE 2181 9092 9093 9094 9095 9096 9097 9098 9099

CMD ["supervisord", "-n"]