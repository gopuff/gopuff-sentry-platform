FROM centos:latest
ADD logstash.repo /etc/yum.repos.d/logstash.repo
ADD run.sh /run.sh
RUN rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch && \
  yum clean all && \
  yum -y update && \
  yum -y install yum-utils gettext java-1.8.0-openjdk-headless openssl logstash && \
  yum clean all && \
  rm -rf /var/cache/yum && \
  mkdir -p /var/feeds/azure/ && \
  chown -R logstash:logstash /var/feeds/azure && \
  mkdir -p /var/logstash/conf && \
  rm -rf /etc/logstash/logstash-sample.conf && \
  /usr/share/logstash/bin/logstash-plugin install logstash-output-azure_loganalytics && \
  chmod +x /run.sh
ADD pipelines.yml /etc/logstash
CMD ["/run.sh"]
