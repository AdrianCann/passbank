# Passbank [![Build Status](https://travis-ci.org/AdrianCann/passbank.svg?branch=master)](https://travis-ci.org/AdrianCann/passbank)
[![Code Climate](https://codeclimate.com/github/AdrianCann/passbank/badges/gpa.svg)](https://codeclimate.com/github/AdrianCann/passbank)
[![Test Coverage](https://codeclimate.com/github/AdrianCann/passbank/badges/coverage.svg)](https://codeclimate.com/github/AdrianCann/passbank/coverage)
[![Issue Count](https://codeclimate.com/github/AdrianCann/passbank/badges/issue_count.svg)](https://codeclimate.com/github/AdrianCann/passbank)

## Encrypted password/message storage

From the rails console:

```ruby
  # message creation
  Message.create(name: "Max", password: "123", body: "Hello!")

  # message retrieval
  m = Message.find_by(name: "Max")
  m.password = "123"
  m.body #=> "Hello!"
```

## Feature Wishlist
* Validations around password absence/length
* Better interface for setting/getting messages
* Travis CI setup
* Web interface for creating messages
* Web interface for retrieving messages (search by name)
* Deployment to heroku
* Users/Devise
