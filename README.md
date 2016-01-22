# RailsDbProtect

Protect your Rails production databases from the following destructive tasks:

```bash
db:setup db:reset db:drop db:create db:schema:load
```

## Usage

Add the gem and you're done!

To bypass the protection in a production environment, add `ENV['ALLOW_DANGEROUS_TASKS'] = 'true'` to your environment.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails_db_protect'
```


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/rails_db_protect. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

