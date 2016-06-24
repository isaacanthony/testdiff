# testdiff

Ruby gem to locally test only modified files.

## Installation

Add this line to your application's Gemfile:
```ruby
gem 'testdiff'
```

And then execute:
```ruby
bundle
```

Or install it yourself as:
```ruby
gem install testdiff
```

## Usage

Run Rubocop and Rspec on all modified files:
```ruby
testdiff
```

Run Rubocop on all modified files:
```ruby
testdiff rubocop
```

Run Rspec on all modified files:
```ruby
testdiff rspec
```
