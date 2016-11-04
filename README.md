# sinatra-bones

A bare-bones Sinatra application template, structured to allow for easy
expansion beyond Hello World and into a more full-featured, portable, and
development-friendly app.

### Assumptions

* you want to use [bundler](https://github.com/bundler/bundler) to manage your
  dependencies
* you want to use the [data_mapper](https://github.com/datamapper/data_mapper)
  ORM with a supported database
* you want to use [direnv](https://github.com/direnv/direnv) or similar to
  manage configuration values
* you want your application logic to live in `lib/`

### Tools

* `bin/console` opens up an IRB console for this project
* `bin/migrate` makes sure your schema matches your models
* `rackup` starts a Rack server via `config.ru`

### Setup

1. Copy the config template

```sh
cp .envrc.template .envrc
```

2. Add the required datamapper adapter (e.g. `dm-postgres-adapter`) to
   `Gemfile` and run `bundle`
3. Configure your database url (e.g. `postgres://user:pass@host/db`) in
   `.envrc`
4. Add your models to `lib/`
5. Run `bin/migrate` to update your database schema
