FROM karappo/dronedeploy
MAINTAINER Naokazu Terada <naokazu.terada@gmail.com>
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
