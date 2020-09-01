FROM mediawiki:1.34.2

COPY ./LocalSettings.php /var/www/html/LocalSettings.php
COPY ./wiki.png /var/www/html/resources/assets/wiki.png
COPY ./extensions/EmbedVideo /var/www/html/extensions/EmbedVideo
COPY ./extensions/ParserFunctions /var/www/html/extensions/ParserFunctions

EXPOSE 80