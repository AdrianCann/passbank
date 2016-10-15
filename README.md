# Passbank

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
