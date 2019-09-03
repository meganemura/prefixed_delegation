# PrefixedDelegation

Enhance ActiveSupport's delegate method to allow `prefixed` option.

## Installation

```ruby
gem 'prefixed_delegation'
```

## Usage

```ruby
# Defines account_name, but lack of greppability.
delegate :name, to: :user, prefix: :account

# Defines account_name with greppability and some redundancy.
delegate :account_name, to: :user, prefixed: :account

# And also works with prefixed: true.
delegate :user_name, to: :user, prefixed: true
```


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/meganemura/prefixed_delegation.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
