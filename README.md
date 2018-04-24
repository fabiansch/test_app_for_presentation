# README

## Example app to demonstrate how to test a web application (rails 5 / rspec 3)

### [Link](https://fabiansch.github.io/testing_rails_app_with_rspec/#1) to slides
### Get started from zero:

1. install [Docker](https://docs.docker.com/install/) if not already done
1. install [docker-compose](https://docs.docker.com/compose/install/) if not already done
1. having Docker started run in the project's root folder ```docker-compose up --build```
1. in another shell reset the database with some seed data ```docker-compose exec website rails db:reset```
1. visit localhost:3000

- you can restart the app with ```docker-compose stop``` and ```docker-compose up```

### Login Credentials

- there is a user with email: admin@example.com and password: secret

### fire tests

```docker-compose run -e RAILS_ENV=test website rspec```

### get current server log

- development: ```tail -f log/development.log```
- test: ```tail -f log/test.log```

### reset databases

```docker-compose exec website rails db:reset```
