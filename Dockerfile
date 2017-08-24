# Dockerfile

# Author: Andrew Kuttor
# E-mail: andrew.kuttor@dimensiondata.com

# Build with:
# docker build -t <repo-user>/elk .

# Run with:
# docker run -p 5601:5601 -p 9200:9200 -p 5044:5044 -it --name elk <user>/elk

FROM vmware/photon
MAINTAINER andrew.kuttor@dimensiondata.com

# COPY entrypoint.sh /
# ENTRYPOINT ["/entrypoint.sh"]

RUN apt-get update -y \
	&& apt-get upgrade -y \
        && apt-get install git -y \
        && cd ~

EXPOSE 80

STOPSIGNAL SIGTERM

