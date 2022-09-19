
<h3> Окружение для запуска битрикс через docker. </h3>
docker-compose build  && docker-compose up -d

![alt text](./settings.png "�������� ����� ���")
<hr>
<p>Установка битрикс</p>
<a  href="http://127.0.0.1/bitrix_server_test.php">test bitrix server</a> <br>
<a  href="http://127.0.0.1/bitrixsetup.php">setup bitrix </a> <br>
<hr>

**APACHE**

IP APACHE
 `docker inspect apache | grep "IPAddress"` <b> 172.18.1.10 </b>

Вход в контейнер
`docker exec -it apache bash`
<hr>

**MYSQL**

- ip mysql  `docker inspect mysql | grep "IPAddress"` <b>172.18.1.15></b>
- Вход в контейнер `docker exec -it mysql bash"`
- MYSQL_USER=bitrix
- MYSQL_PASSWORD=password
- MYSQL_DATABASE=bitrix
- MYSQL_ROOT_USER=root
- MYSQL_ROOT_PASSWORD=root
<hr>

**MAIL**

Исходящие письма будут попадать в каталог <a  href="./mail">mail</a> <br>


