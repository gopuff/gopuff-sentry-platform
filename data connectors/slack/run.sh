#!/usr/bin/bash
/usr/share/logstash/bin/logstash --pipeline.unsafe_shutdown --config.reload.automatic --path.settings /etc/logstash --path.data /var/feeds/azure/ --log.format json --log.level info
