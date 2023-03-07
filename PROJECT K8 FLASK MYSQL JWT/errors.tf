###########################
Not able to install package flask-mysqldb
https://askubuntu.com/questions/1159764/not-able-to-install-package-flask-mysqldb
How to install Flask-mysqldb for Python?
https://stackoverflow.com/questions/58957474/how-to-install-flask-mysqldb-for-python



(venv) anji@anji:~/tempfol$ pip install flask_mysqldb
Collecting flask_mysqldb
  Using cached Flask-MySQLdb-1.0.1.tar.gz (4.3 kB)
  Preparing metadata (setup.py) ... done
Requirement already satisfied: Flask>=0.12.4 in ./venv/lib/python3.8/site-packages (from flask_mysqldb) (2.2.3)
Collecting mysqlclient>=1.3.7
  Using cached mysqlclient-2.1.1.tar.gz (88 kB)
  Preparing metadata (setup.py) ... error
  error: subprocess-exited-with-error
  
  × python setup.py egg_info did not run successfully.
  │ exit code: 1
  ╰─> [16 lines of output]
      /bin/sh: 1: mysql_config: not found
      /bin/sh: 1: mariadb_config: not found
      /bin/sh: 1: mysql_config: not found
      Traceback (most recent call last):
        File "<string>", line 2, in <module>
        File "<pip-setuptools-caller>", line 34, in <module>
        File "/tmp/pip-install-7gy22r7w/mysqlclient_3c1c3584a2b54b3cb0200fe94c363a50/setup.py", line 15, in <module>
          metadata, options = get_config()
        File "/tmp/pip-install-7gy22r7w/mysqlclient_3c1c3584a2b54b3cb0200fe94c363a50/setup_posix.py", line 70, in get_config
          libs = mysql_config("libs")
        File "/tmp/pip-install-7gy22r7w/mysqlclient_3c1c3584a2b54b3cb0200fe94c363a50/setup_posix.py", line 31, in mysql_config
          raise OSError("{} not found".format(_mysql_config_path))
      OSError: mysql_config not found
      mysql_config --version
      mariadb_config --version
      mysql_config --libs
      [end of output]
  
  note: This error originates from a subprocess, and is likely not a problem with pip.
error: metadata-generation-failed

× Encountered error while generating package metadata.
╰─> See above for output.

note: This is an issue with the package mentioned above, not pip.
hint: See above for details.

OUT-PUT=
https://github.com/alexferl/flask-mysqldb/issues/13

rm -rf .* /root/tmp

  
sudo apt-get install mysql-server
sudo apt-get install libmysqlclient-dev
pip3 install flask-mysqldb
######################################################################################################33
anji@anji:~/tempfol$ python3 server.py 
Traceback (most recent call last):
  File "server.py", line 3, in <module>
    from flask_mysqldb import MYSQL
ImportError: cannot import name 'MYSQL' from 'flask_mysqldb' (/usr/local/lib/python3.8/dist-packages/flask_mysqldb/__init__.py)
anji@anji:~/tempfol$  pip install MySQL-python

+++++++++++++++++++++++++++++++++++++++
https://phoenixnap.com/kb/mysql-server-through-socket-var-run-mysqld-mysqld-sock-2

root@anji:/tmp# sudo systemctl status mysql

● mysql.service - MySQL Community Server
     Loaded: loaded (/lib/systemd/system/mysql.service; enabled; vendor pres>
     Active: "failed "(Result: exit-code) since Mon 2023-03-06 09:24:11 IST; 8>
    Process: 1669 ExecStartPre=/usr/share/mysql/mysql-systemd-start pre (cod>
    Process: 1677 ExecStart=/usr/sbin/mysqld (code=exited, status=1/FAILURE)
   Main PID: 1677 (code=exited, status=1/FAILURE)
     Status: "Server shutdown complete"
      Error: 13 (Permission denied)

root@anji:/tmp# systemctl start mysql 
Job for mysql.service failed because the control process exited with error code.
See "systemctl status mysql.service" and "journalctl -xe" for details.

root@anji:/tmp# sudo systemctl enable mysql
Synchronizing state of mysql.service with SysV service script with /lib/systemd/systemd-sysv-install.
Executing: /lib/systemd/systemd-sysv-install enable mysql

root@anji:/tmp# sudo systemctl start mysql
Job for mysql.service failed because the control process exited with error code.
See "systemctl status mysql.service" and "journalctl -xe" for details.

root@anji:/tmp# sudo find / -type s
        ===  not found ===  values
 
 root@anji:/tmp#  journalctl -xe

Mar 06 18:25:15 anji rtkit-daemon[1212]: Supervising 4 threads of 3 processe>
Mar 06 18:25:16 anji rtkit-daemon[1212]: Supervising 4 threads of 3 processe>
Mar 06 18:25:16 anji rtkit-daemon[1212]: Supervising 4 threads of 3 processe>
Mar 06 18:25:16 anji rtkit-daemon[1212]: Supervising 4 threads of 3 processe>
Mar 06 18:25:16 anji rtkit-daemon[1212]: Supervising 4 threads of 3 processe>

SOLUTION :    "https://www.tutsmake.com/failed-to-start-mysql-community-server/"

 Step 2 – Reinstall MySQL
    Step 3 – Restart MySQL Server

Step 1 – Login to Your SSH Server

First of all, you need to login into your ssh server with username and password.
Step 2 – Reinstall MySQL

Then execute the following command into your terminal to “purge” every file related to MySQL and reinstall mysql-server:
:
sudo apt-get purge mysql-server mysql-client mysql-common
sudo apt-get install mysql-server 
sudo systemctl restart mysql

root@anji:/tmp# mysql
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 8.0.32-0ubuntu0.20.04.2 (Ubuntu)

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.
Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

##############################3333
anji@anji:~/tempfol$ python3 -m venv venv 
anji@anji:~/tempfol$ ls
venv
anji@anji:~/tempfol$ nano server.py
anji@anji:~/tempfol$ source ./venv/bin/activate
(venv) anji@anji:~/tempfol$ ls
venv
(venv) anji@anji:~/tempfol$ 

(venv) anji@anji:~/tempfol$ env | grep VIRTUAL
VIRTUAL_ENV=/home/anji/tempfol/venv
(venv) anji@anji:~/tempfol$ 

(venv) anji@anji:~/tempfol$ pip3 install PYlint

(venv) anji@anji:~/tempfol$ pip install jedi 

anji@anji:~/tempfol$ python3 -m pip install --upgrade pi

(venv) anji@anji:~/tempfol$ pip install Pyjwt

(venv) anji@anji:~/tempfol$ pip install flask 
pip3 install flask-mysqldb

nv) anji@anji:~/tempfol$ export MYSQL_HOST=localhost

(venv) anji@anji:~/tempfol$ export MYSQL_HOST=localhost
(venv) anji@anji:~/tempfol$ python3 server.py 
localhost
(venv) anji@anji:~/tempfol$ 

================================================
| import jwt, datetime, os
from  flask import Flask
from flask_mysqldb import MySQL
from flask import Flask, request, send_file, jsonify, render_template, url_for, redirect
server = Flask(__name__)
mysql = MySQL(server)
# config
server.config["MYSQL_HOST"] = os.environ.get("MYSQL_HOST")
print(server.config["MYSQL_HOST"]) 
================================================

(venv) anji@anji:~/tempfol$ python3 server.py 
localhost


CREATE USER 'sammy'@'localhost' IDENTIFIED BY 'anji123';

#####################3333

root@anji:/home/anji/tempfol# mysql -uroot < init.sql 
ERROR 1064 (42000) at line 9: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'AUTO_INCRIMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    password VARCHA' at line 2
root@anji:/home/anji/tempfol# 

root@anji:/home/anji/tempfol# mysql -uroot < init.sql 
ERROR 1396 (HY000) at line 1: Operation CREATE USER failed for 'auth_user'@'localhost'
root@anji:/home/anji/tempfol# 

root@anji:/home/anji/tempfol# mysql -Uroot -e "DROP DATABASE auth"

root@anji:/home/anji/tempfol# mysql -Uroot -e "DROP USER auth_user@localhost"

root@anji:/home/anji/tempfol# mysql -Uroot < init.sql 

(venv) anji@anji:~/tempfol$ mysql -Uroot
ERROR 1045 (28000): Access denied for user 'anji'@'localhost' (using password: NO)

mysql> CREATE USER 'root'@'localhost' IDENTIFIED BY 'anji1234';
ERROR 1396 (HY000): Operation CREATE USER failed for 'root'@'localhost'

MySQL/MariaDB command prompt: 
ALTER USER 'root'@'localhost' IDENTIFIED BY 'anji1234'; 
flush privileges; exit; 

mysql> ALTER USER 'root'@'localhost' IDENTIFIED BY 'anji1234'; 
Query OK, 0 rows affected (0.00 sec)

(venv) anji@anji:~/tempfol$ sudo mysql -Uroot

Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 14
Server version: 8.0.32-0ubuntu0.20.04.2 (Ubuntu)
Copyright (c) 2000, 2023, Oracle and/or its affiliates.
Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.
Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| anji               |
| auth               |
| cricket            |
| foodball           |
| information_schema |
| movies1            |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
9 rows in set (0.01 sec)

mysql> use auth
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A
Database changed

mysql> show tables;
+----------------+
| Tables_in_auth |
+----------------+
| user           |
+----------------+
1 row in set (0.00 sec)

mysql> describe user;
+----------+--------------+------+-----+---------+----------------+
| Field    | Type         | Null | Key | Default | Extra          |
+----------+--------------+------+-----+---------+----------------+
| id       | int          | NO   | PRI | NULL    | auto_increment |
| email    | varchar(255) | NO   |     | NULL    |                |
| password | varchar(255) | NO   |     | NULL    |                |
+----------+--------------+------+-----+---------+----------------+
3 rows in set (0.01 sec)

mysql> select * from user;
+----+---------------+----------+
| id | email         | password |
+----+---------------+----------+
|  1 | asd@gmail.com | anji123  |
+----+---------------+----------+
1 row in set (0.00 sec)

#################################################333
anji@anji:~/tempfol$ pip3 freeze > requirements.txt 
anji@anji:~/tempfol$ cat requirements.txt 
appdirs==1.4.3
apturl==0.5.2
attrs==21.2.0
autopep8==1.5.7
bcrypt==3.1.7
blinker==1.4
Brlapi==0.7.0
cached-property==1.5.1
certifi==2019.11.28
chardet==3.0.4
click==8.0.1
colorama==0.4.3
command-not-found==0.3
cryptography==2.8
cupshelpers==1.0
DateTime==5.0
dbus-python==1.2.16

 => [5/6] RUN pip install --no-cache-dir -r requirements.txt                     6.9s
 => [6/6] COPY . /app                                                            0.5s
 => exporting to image                                                           0.4s 
 => => exporting layers                                                          0.4s 
 => => writing image sha256:ab73255277c654c672a1c11e9b5ddebd686df05b04e869b72e8  0.0s 
 => => naming to docker.io/library/pypy                                          0.0s 
anji@anji:~/tempfol$ docker tag ab73255277c654c672a1c11e9b5ddebd686df05b04e869b72e8  anjireddy3993/flask-mysql-k8-jwt:latest
anji@anji:~/tempfol$ docker push  anjireddy3993/flask-mysql-k8-jwt:latest
The push refers to repository [docker.io/anjireddy3993/flask-mysql-k8-jwt]
c1e349c1cf7a: Pushed 
729808c49a8a: Pushed 

++++++++++++++++++++
root@auth-7597f4847d-lkkvp:/app# ls
Dockerfile  errors.tf  init.sql  manifests  requirements.txt  server.py  venv
root@auth-7597f4847d-lkkvp:/app# env
KUBERNETES_SERVICE_PORT_HTTPS=443
MYSQL_PORT=3306
AUTH_SERVICE_PORT_80_TCP_ADDR=10.103.155.0
KUBERNETES_SERVICE_PORT=443
AUTH_SERVICE_PORT_80_TCP_PROTO=tcp
HOSTNAME=auth-7597f4847d-lkkvp
PYTHON_VERSION=3.10.10
MYSQL_DB=auth
AUTH_SERVICE_PORT=tcp://10.103.155.0:80
PWD=/app
PYTHON_SETUPTOOLS_VERSION=65.5.1
MYSQL_PASSWORD=Auth123
MYSQL_USER=auth_user
HOME=/root
LANG=C.UTF-8
KUBERNETES_PORT_443_TCP=tcp://10.96.0.1:443
AUTH_SERVICE_SERVICE_PORT=80
AUTH_SERVICE_SERVICE_HOST=10.103.155.0
GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
MYSQL_HOST=host.minikube.internal
TERM=xterm
AUTH_SERVICE_PORT_80_TCP_PORT=80
SHLVL=1
KUBERNETES_PORT_443_TCP_PROTO=tcp
PYTHON_PIP_VERSION=22.3.1
KUBERNETES_PORT_443_TCP_ADDR=10.96.0.1
PYTHON_GET_PIP_SHA256=394be00f13fa1b9aaa47e911bdb59a09c3b2986472130f30aa0bfaf7f3980637
AUTH_SERVICE_PORT_80_TCP=tcp://10.103.155.0:80
KUBERNETES_SERVICE_HOST=10.96.0.1
KUBERNETES_PORT=tcp://10.96.0.1:443
KUBERNETES_PORT_443_TCP_PORT=443
PYTHON_GET_PIP_URL=https://github.com/pypa/get-pip/raw/d5cb0afaf23b8520f1bbcfed521017b4a95f5c01/public/get-pip.py
PATH=/usr/local/bin:/u  "
root@auth-7597f4847d-lkkvp:/app# env | grep  MYSQL
MYSQL_PORT=3306
MYSQL_DB=auth
MYSQL_PASSWORD=Auth123
MYSQL_USER=auth_user
MYSQL_HOST=host.minikube.internal
root@auth-7597f4847d-lkkvp:/app# 


