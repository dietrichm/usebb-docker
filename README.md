# usebb-docker

Docker and Docker Compose set-up for running [legacy UseBB 1](https://github.com/usebb/UseBB) locally.

This is used primarily for code refactoring katas, workshops, and just downright nostalgia.

## Set up

* Clone UseBB 1 into `../usebb`.
* Edit `../usebb/config.php` and adjust the database settings to:

```php
$dbs['type'] = 'mysqli';
$dbs['server'] = 'db';
$dbs['username'] = 'user';
$dbs['passwd'] = 'password';
$dbs['dbname'] = 'usebb';
$dbs['prefix'] = 'usebb_';
$dbs['persistent'] = 0;
```

* Run `docker-compose up -d`.
* Go to [the install wizard](http://0.0.0.0/install/index.php), fill in some bogus values for the database config, specify the credentials for an admin account, and click "Start Installation".
* Don't save the downloaded `config.php` file and click said "Start Installation" button again.
* [Log in](http://0.0.0.0/panel.php?act=login) using your specified credentials.

## Peeking into the database

Using Adminer, you can easily access the UseBB database:

* Provided containers are running, go to [0.0.0.0:8080](http://0.0.0.0:8080/).
* Enter "MySQL", `db`, `user`, `password` and `usebb` for respectively system, server, username, password and database, and click "Login".

![](https://raw.githubusercontent.com/usebb/UseBB/v1.0/templates/default/smilies/lol.gif)
