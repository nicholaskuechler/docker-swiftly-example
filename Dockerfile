FROM python:3.7-stretch

ENV DEBIAN_FRONTEND noninteractive

# Example for installing additional packages
RUN apt-get --fix-missing --assume-yes update \
    && \
    apt-get --fix-missing --assume-yes install \
        git \
        curl \
        ipmitool \
        curl \
        wget \
        unzip \
        vim \
        screen \
    && \
    rm -rf /var/lib/apt/lists/* \
    && \
    apt-get clean

# Install the swiftly packages and requirements
COPY requirements.txt /app/requirements.txt
RUN pip --no-cache-dir install -r /app/requirements.txt

CMD /bin/bash
