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

## Known issues

Well... this is legacy software that was not maintained in close to a decade. There are bound to be issues, especially if we'd be running this in PHP 7 or 8.

What appears to be broken on PHP 5.6 and MySQL 5.7 (used by the containers):

* Search, complaining over "Expression #1 of ORDER BY clause is not in SELECT list".
* ...?
