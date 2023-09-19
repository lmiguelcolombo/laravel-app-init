<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p>

<p align="center">
<img alt="Static Badge" src="https://img.shields.io/badge/node-v18.13.0-green">
<img alt="Static Badge" src="https://img.shields.io/badge/npm-v8.19.0-green">
<img alt="Static Badge" src="https://img.shields.io/badge/php-v8.1.11-blue?logo=php">
<img alt="Static Badge" src="https://img.shields.io/badge/laravel-v10.0-color?logo=laravel&color=%23fe2d1f">
</p>

## 🔖 About

This is a github repository with files used to start a [Laravel](https://laravel.com) project using [Docker](https://www.docker.com/).

## 💻 Technologies

- [Docker](https://www.docker.com/)
- [Laravel](https://laravel.com/)
- [PHP](https://www.php.net)

## 📦 Installation

### Requirements

Before you get started, you'll need to have installed the following
features: [Git](https://git-scm.com), [Docker](https://www.docker.com/), [Node](https://nodejs.org), [Make](https://www.gnu.org/software/make/#download).
<br>

### Step-by-step

- Via SSH

```zsh
$ git clone git@github.com:lmiguelcolombo/laravel-docker-app-init.git
```

- Via HTTPS

```zsh
$ git clone git@github.com:lmiguelcolombo/laravel-docker-app-init.git
```

- Via [Github CLI](https://cli.github.com/)

```zsh
$ gh repo clone lmiguelcolombo/laravel-docker-app-init
```

<br>

Then, rename the directory and enter on it:

```zsh
$ mv laravel-docker-app-init name-of-your-project
$ cd name-of-your-project
```

Then, you're going to access the `docker-compose.yml` file and replace the `xxxxx` with the name of your project. After that, run the following commands:

```zsh
$ make init
$ make laravel-init
```

After this, the Laravel project will be inside a folder, you could move all the files and folders to the root project and run:

```zsh
$ make init
```

Then, run this commands:

```zsh
$ nvm install 18.16
$ nvm use 18.16
$ npm install
$ npm run dev
```

Open your browser and visit https://localhost:8000 to access your [Laravel](https://laravel.com) application running!

Then, just code and coffee! 🧑‍💻 ☕️

#### Make scripts

- `make stop` will stop (not kill) the docker container. When you'll want to return soon and continue to coding, use it.

- `make start` start (again) the containers stopped by the command above. The advantage of using `start` and `stop` is that you don't need to wait all the docker container to build up again.

- `make down` will kill the docker container.

- `make up` will build up the docker container again.
