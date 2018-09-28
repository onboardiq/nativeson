# Nativeson

ActiveRecord methods to generate JSON from database records using database-native functions for speed.

## Requirements

PostgreSQL 9.2 or higher.

## Usage

Include the Nativeson module either in the particular ActiveRecord model class(es) you want its functionality in, or to make it globally available to all your models, include it in your Rails app's ApplicationRecord class, or for apps generated by older versions of Rails that don't have ApplicationRecord (or if you have some other reason to do so), into ActiveRecord::Base.

```ruby
class User < ApplicationRecord # or ActiveRecord::Base in older apps
  include Nativeson
end
```
OR
```ruby
class ApplicationRecord < ActiveRecord::Base
  include Nativeson
end
```
OR
```ruby
# monkey-patching via a file in config/initializers:
module ActiveRecord
  class Base
    include Nativeson
  end
end
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'nativeson'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install nativeson
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
