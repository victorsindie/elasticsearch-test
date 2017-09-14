FROM docker.elastic.co/elasticsearch/elasticsearch:5.6.0

ENV ES_JAVA_OPTS -Xms1024m -Xmx1024m
ENV PATH /usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENV ELASTIC_CONTAINER true
ENV JAVA_HOME /usr/lib/jvm/jre-1.8.0-openjdk

ADD elasticsearch.yml /usr/share/elasticsearch/config/
USER root
RUN chown elasticsearch:elasticsearch config/elasticsearch.yml
USER elasticsearch


EXPOSE 9200
EXPOSE 9300

#ADD elasticsearch.yml /usr/share/elasticsearch/config/
#RUN chown elasticsearch:elasticsearch config/elasticsearch.yml
#USER elasticsearch