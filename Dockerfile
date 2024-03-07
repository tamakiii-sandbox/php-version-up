FROM amazonlinux:2

RUN amazon-linux-extras enable php7.3 && \
    yum install -y \
      php \
      php-mbstring \
      php-common \
      && \
    yum clean all

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php -r "if (hash_file('sha384', 'composer-setup.php') === 'dac665fdc30fdd8ec78b38b9800061b4150413ff2e3b6f88543c636f7cd84f6db9189d43a81e5503cda447da73c7e5b6') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && \
    php composer-setup.php --install-dir /usr/bin --filename=composer && \
    php -r "unlink('composer-setup.php');"
