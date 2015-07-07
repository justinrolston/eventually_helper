require 'bundler/setup'
Bundler.setup
require 'pry'

require 'eventually_helper'
require 'coveralls'
Coveralls.wear!

RSpec.configure do |config|
    # some (optional) config here
  # end
end
