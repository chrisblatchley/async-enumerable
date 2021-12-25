# Async::Enumerable

Support async for Enumerable methods that it makes sense for

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'async-enumerable'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install async-enumerable

## Usage

`Enumerable` methods have `_async` appended where it makes sense. currently supports `#each_async` and will extend to others as needed.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/chrisblatchley/async-enumerable.
