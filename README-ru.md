# PHP Project Boilerplate

### [English version of the readme](./README.md)

## Описание

Сборка для быстрого развертывания локального окружения для разработки на PHP.
Предназначена для среды WSL (Windows Subsystem for Linux), тестировалась
на Ubuntu 22.04.2 LTS встроенной в Windows 10.
Отдельная сборка для Laravel в [этом репозитории](https://github.com/A-Nikolaefff/laravel-project-boilerplate).

## Состав
* Apache 2.4
* PHP 8.2
* Xdebug
* Composer
* PostgreSQL 15.1
* MySQL 5.7

## Cписок команд

* ```make build``` - сборка контейнеров
* ```make up``` - запуск контейнеров 
* ```make down``` - остановка контейнеров 
* ```make list``` - список запущенных контейнеров 
* ```make php``` - зайти в контейнер php (запустить терминал)
* ```make apache``` - зайти в контейнер apache (запустить терминал)
* ```make mysql``` - зайти в контейнер mysql (запустить терминал)
* ```make pgsql``` - зайти в контейнер postgresql (запустить терминал)
* ```make enter name=SERVICE``` - зайти в запущенный контейнер (запустить терминал), 
вместо ```SERVICE``` подставить имя сервиса согласно
**docker-compose.yml**, например ```php```, ```pgsql``` или ```nginx``` и т.п.


## Настройка Xdebug в PHPStorm
* Имя сервера по умолчанию: **docker**
* Хост: **localhost**
* Порт: **8080**
* Использовать path mapping между директорией  **src** и путем **/var/www**
 
## Возможные проблемы 

Для корректной работы volumes докер-контейнера PostgreSQL необходимо, 
что бы UID/GID пользователя внутри контейнера соответствовали значению
локального пользователя Linux. По умолчанию данный контейнер запускается 
с UID/GID 1000/1000. В случае если UID/GID локального пользователя отличаются 
необходимо выполнить команды ```export LOCAL_UID=$(id -u)``` и ```export LOCAL_GID=$(id -g)```
перед первым запуском контейнера PostgreSQL.