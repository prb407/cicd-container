FROM ubuntu:20.04
USER root
RUN apt-get update && \
    apt-get install -y \
        python3 \
        python3-pip \
        python3-setuptools \
        curl \
    && pip3 install --upgrade pip \
    && apt-get clean
RUN curl -sL https://deb.nodesource.com/setup_12.x  | bash -
RUN apt-get -y install nodejs
RUN apt install -y --no-install-recommends yarn

RUN pip3 --no-cache-dir install --upgrade awscli
RUN node --version
RUN aws --version
RUN python3 --version
CMD ["/bin/bash"]