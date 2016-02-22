# Solidus Offsite Payments

[![Build Status](https://travis-ci.org/SebAshton/solidus_offsite_payments.svg?branch=master)](https://travis-ci.org/SebAshton/solidus_offsite_payments) [![Code Climate](https://codeclimate.com/github/SebAshton/solidus_offsite_payments/badges/gpa.svg)](https://codeclimate.com/github/SebAshton/solidus_offsite_payments) [![Test Coverage](https://codeclimate.com/github/SebAshton/solidus_offsite_payments/badges/coverage.svg)](https://codeclimate.com/github/SebAshton/solidus_offsite_payments/coverage)

**Currently In Progress**

ActiveMerchant::OffsitePayments Integration for [Solidus](https://github.com/solidusio/solidus)

## ActiveMerchant

For details of all the integration available, and how to implement them, please see the ActiveMerchant [GitHub](https://github.com/activemerchant/offsite_payments)

Installation
------------

Add solidus_offsite_payments to your Gemfile:

```ruby
gem 'solidus_offsite_payments'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g solidus_offsite_payments:install
```

Testing
-------

First bundle your dependencies, then run `rake`. `rake` will default to building the dummy app if it does not exist, then it will run specs. The dummy app can be regenerated by using `rake test_app`.

```shell
bundle
bundle exec rake
```

If using Docker (no need to bundle)

```shell
docker-compose run --service-ports --rm web rake
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'solidus_offsite_payments/factories'
```

Contributing
------------

If you familiar with or would like to use Docker, then a Dockerfile is included, this will ensure your test environment is perfect and disposable :simple_smile:

## Working with Docker

### Setup

 * `docker-machine create --driver virtualbox solidusoffsitepayments`
 * `docker-machine env solidusoffsitepayments`
 * `eval (docker-machine env solidusoffsitepayments)`
 * `docker-compose run --service-ports --rm web bundle install`
 * `docker-compose build`

### Changes to Gemfile

  * `docker-compose run --service-ports --rm web bundle install`
  * `docker-compose build`

### Tidying up Docker

*Containers*
Remove all stopped containers `docker rm (docker ps -a -q)`

*Images*
Remove all untagged images `docker rmi (docker images | grep "^<none>" | awk '{print $3}')`

--

Copyright (c) 2016 Seb Ashton, released under the New BSD License
