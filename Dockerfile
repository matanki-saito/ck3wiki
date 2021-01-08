FROM mediawiki:1.34.2

COPY ./LocalSettings.php /var/www/html/LocalSettings.php
COPY ./wiki.png /var/www/html/resources/assets/wiki.png
COPY ./extensions/EmbedVideo /var/www/html/extensions/EmbedVideo
COPY ./extensions/ParserFunctions /var/www/html/extensions/ParserFunctions
COPY ./extensions/DiscordNotifications /var/www/html/extensions/DiscordNotifications
COPY ./extensions/googleAnalytics /var/www/html/extensions/googleAnalytics
COPY ./extensions/LabeledSectionTransclusion /var/www/html/extensions/LabeledSectionTransclusion
COPY ./extensions/Tabber /var/www/html/extensions/Tabber
COPY ./extensions/SimpleMathJax /var/www/html/extensions/SimpleMathJax

EXPOSE 80