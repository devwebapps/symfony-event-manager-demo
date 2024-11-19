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

### Helpful Symfony Commands

To save time, you can install [Symfony Maker](https://symfony.com/doc/current/bundles/SymfonyMakerBundle/index.html) or [Symfony CLI](https://symfony.com/download) to use helpful commands.
For this project I am using the Symfony CLI, so every command starts with `symfony console`. If you use Symfony Maker, every command starts with `php bin/console`

#### Generate a new controller class:
```
symfony console make:controller BrandNewController
```
<pre>
created: src/Controller/BrandNewController.php
created: templates/brandnew/index.html.twig
</pre>

#### Generate an entire CRUD from a Doctrine entity (assuming the entity already exists):
```
symfony console make:crud Product
```
<pre>
created: src/Controller/ProductController.php
created: src/Form/ProductType.php
created: templates/product/_delete_form.html.twig
created: templates/product/_form.html.twig
created: templates/product/edit.html.twig
created: templates/product/index.html.twig
created: templates/product/new.html.twig
created: templates/product/show.html.twig
</pre>