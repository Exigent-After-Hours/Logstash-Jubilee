## Logstash Jubilee

### A collection of scripts and configs I wrote for generating, shipping, collecting, and parsing logs.

#### Overview

Logs are generated from various devices and shipped to a single logstash instance also running Graylog.
Each input source has its own pipeline defined in /etc/logstash/pipelines.yml
Each pipeline/input has its own config file in /etc/logstash/conf.d
