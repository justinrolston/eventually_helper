# EventuallyHelper

[![Build Status](https://travis-ci.org/justinrolston/eventually_helper.svg?branch=master)](https://travis-ci.org/justinrolston/eventually_helper)


A simple gem that will run code in a block and if an error is thrown in the block it will be catch and the code will re-execute until it runs without error or the timeout is met in which the an error will be thrown.

## Installation

Add this line to your application's Gemfile:

    gem 'eventually_helper'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install eventually_helper

## Usage

```ruby
eventually { click_on "Menu" }
eventually(timeout: 3) { assert_text "Success" } # defaults to 10 seconds
eventually(interval: 0.01) { assert_text "Sent" } # defaults to 0.1 seconds
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/eventually_helper/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
