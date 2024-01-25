# README

This is a Student Results Management System application.

It is written in Ruby on Rails using MVC framework.

## Requirements
Install [Docker](https://www.docker.com/products/docker-desktop/).
Run the following commands

```bash
docker volume create ruby-bundle-cache
alias docked='docker run --rm -it -v ${PWD}:/rails -v ruby-bundle-cache:/bundle -p 3000:3000 ghcr.io/rails/cli'
```

## Running the app
Run the following commands
```bash
docked rails db:migrate
docked rails server
```

Open `http://localhost:3000` on your browser.

