
<h3> ��������� ��� ������� ������� ����� docker. </h3>
docker-compose build  && docker-compose up -d

![alt text](./settings.png "�������� ����� ���")
<hr>

**APACHE**

IP APACHE
 `docker inspect apache | grep "IPAddress"`

���� � ���������
`docker exec -it apache bash`

<a  href="http://127.0.0.1/bitrix_server_test.php">test bitrix server</a> <br>
<a  href="http://127.0.0.1/bitrixsetup.php">setup bitrix </a> <br>

<hr>

**MYSQL**

- ip mysql  `docker inspect mysql | grep "IPAddress"`
- ���� � ��������� `docker inspect mysql | grep "IPAddress"`

- MYSQL_USER=bitrix
- MYSQL_PASSWORD=password
- MYSQL_DATABASE=bitrix
- MYSQL_ROOT_USER=root
- MYSQL_ROOT_PASSWORD=root

<hr>

**mail**

��������� ������ ����� ���������� � ����������  <a  href="./mail">mail</a> <br>


