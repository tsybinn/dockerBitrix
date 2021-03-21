
<h3> Окружение для запуска битрикс через docker. </h3>
docker-compose build  && docker-compose up -d

![alt text](./settings.png "�������� ����� ���")
<hr>

**APACHE**

IP APACHE
 `docker inspect apache | grep "IPAddress"`

Вход в контейнер
`docker exec -it apache bash`

<a  href="http://127.0.0.1/bitrix_server_test.php">test bitrix server</a> <br>
<a  href="http://127.0.0.1/bitrixsetup.php">setup bitrix </a> <br>

<hr>

**MYSQL**

- ip mysql  `docker inspect mysql | grep "IPAddress"` 
- Вход в контейнер `docker exec -it mysql bash"` 

- MYSQL_USER=bitrix
- MYSQL_PASSWORD=password
- MYSQL_DATABASE=bitrix
- MYSQL_ROOT_USER=root
- MYSQL_ROOT_PASSWORD=root

<hr>

**mail**

Исходящие письма будут попадать в каталог <a  href="./mail">mail</a> <br>


