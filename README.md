# Soccerama

[![Gem Version](https://badge.fury.io/rb/soccerama.svg)](https://badge.fury.io/rb/soccerama)

The gem is development currently and so his code might be smell. Feel free to contribute.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'soccerama'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install soccerama

## Usage

The wrapper has methods for gets some data from Soccerama.
Just set you api key as ENV['SOCCERAMA_API_KEY'] or create instance of Soccerama::Client with you api in attribute. Like this:

`@client = Soccerama::Client.new('YOUR_API_KEY')`

For example, you can get current competitions:

`@competitions = @client.competitions`

or

`@competitions = @client.competitions(10)`
to obtain a particular competition

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/thesunwave/soccerama-api. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

