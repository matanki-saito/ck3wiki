FROM mediawiki:1.34.2

COPY ./LocalSettings.php /var/www/html/LocalSettings.php

EXPOSE 80