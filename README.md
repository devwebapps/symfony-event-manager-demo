# Symfony Event Manager Demo

In preparation for this project, I implemented the following steps:

1. Docker containers created with PHP, Nginx and MySql
2. Symfony application created
   - Basic framework created with `composer create-project symfony/skeleton /var/www/html`
   - `composer require webapp` executed to install extra packages to get everything you need to build a web application
3. Symfony CLI installed (Dockerfile extended)
   - Added `wget` to installed dependencies
   - Added `RUN wget https://get.symfony.com/cli/installer -O - | bash && \
     mv /root/.symfony*/bin/symfony /usr/local/bin/symfony`
   - Removed containers `docker compose down`
   - Created containers `docker compose build`
   - Started containers `docker compose up -d`

These steps served as preparation to get the Symfony application running. There are different ways to do this including:
1. [Installing & Setting up the Symfony Framework](https://symfony.com/doc/current/setup.html)
2. [Using Docker with Symfony](https://symfony.com/doc/current/setup/docker.html)

These steps no longer need to be carried out for this application. They serve for understanding.