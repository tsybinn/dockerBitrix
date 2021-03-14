#!/bin/sh
cd  /var/www/html/
wget https://dev.1c-bitrix.ru/download/scripts/bitrix_server_test.php
wget https://www.1c-bitrix.ru/download/scripts/bitrixsetup.php
touch index.php
echo '<? phpinfo();mail("test@ryu.ru","test","test");' >> index.php
chown -R www-data:www-data  /var/www/html
apache2-foreground