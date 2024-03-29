FROM mediawiki:1.35.7

RUN pecl install -o -f redis \
&&  rm -rf /tmp/pear \
&&  docker-php-ext-enable redis

COPY ./php.ini /usr/local/etc/php/php.ini
COPY ./cacert.pem /usr/local/etc/php/cacert.pem
COPY ./LocalSettings.php /var/www/html/LocalSettings.php
COPY ./wiki.png /var/www/html/resources/assets/wiki.png
COPY ./extensions/EmbedVideo /var/www/html/extensions/EmbedVideo
COPY ./extensions/ParserFunctions /var/www/html/extensions/ParserFunctions
COPY ./extensions/DiscordNotifications /var/www/html/extensions/DiscordNotifications
COPY ./extensions/googleAnalytics /var/www/html/extensions/googleAnalytics
COPY ./extensions/LabeledSectionTransclusion /var/www/html/extensions/LabeledSectionTransclusion
COPY ./extensions/Tabber /var/www/html/extensions/Tabber
COPY ./extensions/SimpleMathJax /var/www/html/extensions/SimpleMathJax
COPY ./extensions/TorBlock /var/www/html/extensions/TorBlock
COPY ./extensions/ConfirmEdit /var/www/html/extensions/ConfirmEdit
COPY ./extensions/CodeMirror /var/www/html/extensions/CodeMirror
COPY ./extensions/MobileFrontend /var/www/html/extensions/MobileFrontend

EXPOSE 80