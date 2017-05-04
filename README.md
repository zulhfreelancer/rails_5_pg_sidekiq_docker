### Rails 5 on Docker - Puma + Sidekiq + Postgres

A very simple and lazy Rails app to teach myself how to ship it to cloud using Docker.

I'm using Postgres (PG) database, Sidekiq and Redis for this project.

#### Notes

- rename `.r5pgsd-example.env` to `.r5pgsd.env` before you run `docker-compose up --build`
- line `CMD bundle exec puma` inside Dockerfile will give you `development` environment
- if you want it to be `production`, change it to `CMD RAILS_ENV=production bundle exec puma`
