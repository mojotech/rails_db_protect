# RailsDbProtect

Protect your Rails production databases from destructive rake tasks:

```bash
db:setup db:reset db:drop db:create db:schema:load
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails_db_protect'
```

And then install:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install rails_db_protect
```

## Usage

Just drop it in and you will not be able to run the dangerous tasks in production environments. To bypass this in, say, a staging environment, add `ENV['ALLOW_DANGEROUS_TASKS'] = 'true'` to your environment.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/rails_db_protect. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

