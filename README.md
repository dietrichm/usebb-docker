# usebb-docker

Docker and Docker Compose set-up for running [legacy UseBB 1](https://github.com/usebb/UseBB) locally.

This is used primarily for code refactoring katas, workshops, and just downright nostalgia.

Also works with [Podman](https://podman.io/) and Podman Compose.

## Set up

* Clone UseBB 1 into `../usebb`.
* Copy `config.php` from this project to `../usebb/config.php`.
* Run `docker compose up -d`. The first time, it will take a while before all containers are built and ready.
* Go to [the register page](http://0.0.0.0/panel.php?act=register) and click "I accept".
* Fill in the credentials for your admin account and click "Register".
* Proceed to [log in](http://0.0.0.0/panel.php?act=login) using your specified credentials.

## Checking mails

Mails are sent to a local Mailpit container, which you can [access in the browser](http://0.0.0.0:8025/).

## Peeking into the database

Using Adminer, you can easily access the UseBB database:

* Provided containers are running, go to [the Adminer interface](http://0.0.0.0:8080/).
* Enter "MySQL", `db`, `user`, `password` and `usebb` for respectively system, server, username, password and database, and click "Login".

## Composer

Composer 2.2 (which still runs on PHP 5) is available in the `web` container.

To run, use `docker compose exec web composer <command>`.

## License

Copyright 2022, Dietrich Moerman.

Released under the terms of the [MIT License](LICENSE).

![](https://raw.githubusercontent.com/usebb/UseBB/v1.0/templates/default/smilies/lol.gif)
