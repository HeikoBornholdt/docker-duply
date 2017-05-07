FROM ubuntu:xenial
MAINTAINER Heiko Bornholdt "heiko@bornholdt.it"

RUN apt-get update \
	&& \
	apt-get install -y \
		duply \
		rsync \
		python-paramiko \
		python-urllib3 \
		python-oauthlib \
		python-boto \
		ncftp \
		python-cloudfiles \
		lftp \
		python-gdata \
		tahoe-lafs \
		python-swiftclient \
		openssh-client \
		python-doc \
		python-tk \
		python-lockfile-doc \
		python2.7-doc \
		binutils \
		binfmt-support \
	&& \
    apt-get clean \
    && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME /root/.duply/
VOLUME /root/.cache/duplicity/

WORKDIR /root/.duply/
ENTRYPOINT ["duply"]
