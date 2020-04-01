
# dobix (Docker & Bitrix)
## Окружение для разработчика 1C-Bitrix CMS.

### 1. Как установить
Для установки и настройки окружения запустите в терминале от своего пользователя файл menu.sh.

![menu](https://user-images.githubusercontent.com/3221058/78081211-ad7c4280-73b8-11ea-819a-31334b46d649.png)

Выберите нужный пункт меню и следуйте дальнейшим указаниям. При первоначальной настройке потребуются права root,
поэтому необходимо чтобы пользователь входил в группу sudo.

### 2. Пункты меню
|№| Заголовок| Подробнее |
|-|----------|-----------|
|1|Установка и настройка необходимого ПО для работы| Установка необходимых программ (curl, git, docker, docer-compose). docker client настраивается для запуска от обычного пользователя.| 
|2|Настройка окружения|Первоначальная настройка окружения. Следует указать название окружения. Путь где будут располагаться сайты проектов. Имя и пароль пользователя базы данных, который будет использоваться для всех последующих установок. Пароль пользователя root в СУБД mysql.|
|3|Развернуть существующий проект|Возможность разворачивать существующие проекты. Необходимо указать имя сайта, имя базы данных и указать путь к дампу базы данных. Поддерживается дамп обычный plain text или сжатый gzip. После установки разместите файлы сайта в docroot. Для настройки доступа к базе данных, отредактируйте 2 файла .settings.php и dbconn.php. Или воспользуйтесь меню пункт 6.|
|4|Установить ознакомительную версию Битрикс|Для установки ознакомительной версии Битрикс, укажите имя сайта, имя базы данных. После установки добавьте в файл /etc/hosts запись соотношения имени сайта и ip адреса. После этого перейдите в браузере по имени сайта.|
|5|Загрузить дамп базы данных|Возможность загрузить дамп базы данных. Поддерживается обычный plain text или сжатый дамп средствами gzip. Следует указать имя базы банных куда будет загружен дамп и полный путь к файлу дампа.|
|6|Настроить подключение сайта к базе данных|Следует указать полный путь к docroot сайта и название базы данных.|
|0|Выход|Выход из меню|

### 3. Настройка окружения
Для работы необходимо настроить окружение. Укажите порт по которому будут доступны сайты проектов. По умолчанию будет использоваться порт ``8080``. Укажите имя окружения, по умолчанию ``dobix``. Укажите полный путь где будут распологаться сайты, по умолчанию путь ``./sites`` будет распологаться в текущем каталоге. Введите имя пользователя базы данных. Этот пользователь будет будет использоваться для всех последующих проектов. По умолчанию имя пользователя база данных ``dobix``. Введите пароль пользователя базы данных, по умолчанию пароль ``dobix``. Введите пароль суперпользователя базы данных, по умолчанию пароль ``dobix``. Пароль может состоять из цифр, латинских букв. После настройки окружения можно добавлять сайты проектов.

### 4. Развернуть существующий проект 
Можно разворачивать существующие проекты над которыми вы работаете. Для этого необходимо указать имя сайта, имя базы данных и указать путь к дампу базы данных. Дамп базы данных может быть обычный текстовый файл или текстовый файл сжатый посредством gzip. После установки необходимо расположить файлы проекта в докруте сайта. ``[Путь для всех сайтов, который вы указывали при установке окружения]/[имя сайта]/www``. Например если путь для всех сайтов у вас /home/sites и при установке вы указали имя сайта dobix, то докрут сайта будет распологаться по пути:
``/home/sites/dobix/www``. Внесите изменения в конфигурационные файлы сайта .settings.php и dbconn.php для подключения к базе данных вручную или воспользуйтесь пунктом 6 меню.
Для доступа к сайту добавьте в файл /etc/hosts запись ``ip_address site_name``. Например:
``127.0.0.1 dobix`` или `192.168.1.5 dobix` и т.п. 

### 5. Настройка подключения сайта к базе данных
Воспользуйтесь пунктом 6 меню.
Для настройки подключения, необходимо указать полный путь к докруту сайта и имя базы данных сайта.

### 6. Установка ознакомительной версии 1С-Битрикс
Укажите имя сайта, имя базы данных. Для доступа к сайту добавьте в файл /etc/hosts запись ``ip_address site_name``. Например:
``127.0.0.1 dobix`` или `192.168.1.5 dobix` и т.п. После этого в браузере перейдите по адресу: ``http://имя сайта:порт`` Например: ``http://dobix:8080``. Порт должен быть тот, который вы указывали при настройке окружения.
При создании базы данных, обратите внимание на заполнение поля * Сервер. Необходимо заменить localhost на db. 

![deploy_dobix](https://user-images.githubusercontent.com/3221058/78080059-1f06c180-73b6-11ea-80ed-22b4ae6f83f2.png)

 
