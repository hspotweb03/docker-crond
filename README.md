# How to use this image

External mount for file /etc/crontab is required.

Example stack file for docker-cloud
~~~ text
crond-example:
  image: hspotweb03/docker-crond:latest
  volumes:
    - <path to>/crontab:/etc/crontab
~~~
