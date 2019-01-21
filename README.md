# Sinatra + Sequel App (Api) Boilerplate

A simple Sinatra + Sequel boilerplate to start your api.

Clone the project and Run

```
# bundle install
```

Create a ```.development.env``` file on the project root and add your DB connection credentials (and other needed env variables):

```
export RACK_ENV=development
export DB_USER=[your postgres username]
export DB_PASS=[your postgres password]
export DB_HOST=[your postgres host]
export DB_NAME=[your database name]

```
And then run

```
# script/start_dev
```

to start your development environment

### Create Sequel db migrations

```
# bin/generate_migration [migration name]
```
All migrations will be created on db/migrate folder.

### Run Sequel db migrations

```
# bin/migrate
```
Please make sure that you have all environment variables exported, otherwise it will throw a DB error.

### Tests

Create a ```.test.env``` file on the project root and add your test DB connection credentials (and other needed env variables) for instance:

```
export RACK_ENV=test
export DB_USER=[your postgres username]
export DB_PASS=[your postgres password]
export DB_HOST=[your postgres host]
export DB_NAME=[your database name]

```

Write your specs and run:

``` # rspec spec ```