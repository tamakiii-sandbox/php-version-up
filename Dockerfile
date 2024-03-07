FROM amazonlinux:2

RUN amazon-linux-extras enable php7.3 && \
    yum install -y \
      php \
      php-mbstring \
      php-common \
      && \
    yum clean all

