#!/bin/bash
if [ -d web ]; then
    docker-compose exec web /root/.composer/vendor/drush/drush/drush make profile.make.yml -y
    &&
    docker-compose exec web chown -R www-data:www-data /var/www/html/web/sites;
fi;
