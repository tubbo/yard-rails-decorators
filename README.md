# yard-rails-decorators

A [YARD][] plugin for [Rails::Decorators][]. When processing
`.decorator` files, YARD will combine the documentation from the
originating file with the decorations you've applied.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'yard-rails-decorators'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install yard-rails-decorators

## Usage

Use with [YARD][] by applying the `--plugin=rails-decorators` option to
the `yardoc` command.

## Development

After checking out the repo, run `bin/setup` to install dependencies.
Then, run `rake test` to run the tests. You can also run `bin/console`
for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake
install`. To release a new version, update the version number in
`version.rb`, and then run `bundle exec rake release`, which will create
a git tag for the version, push git commits and tags, and push the
`.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/tubbo/yard-rails-decorators. This project is intended
to be a safe, welcoming space for collaboration, and contributors are
expected to adhere to the [code of conduct](https://github.com/tubbo/yard-rails-decorators/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the
[MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Yard::Rails::Decorators project's codebases,
issue trackers, chat rooms and mailing lists is expected to follow the
[code of conduct](https://github.com/tubbo/yard-rails-decorators/blob/master/CODE_OF_CONDUCT.md).

[YARD]: https://yardoc.org
[Rails::Decorators]: https://github.com/workarea-commerce/rails-decorators
