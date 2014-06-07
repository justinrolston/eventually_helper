require 'spec_helper'

describe 'EventuallyHelper' do
  include EventuallyHelper

  it 'test' do
    eventually { 'test' == 'test' }
  end
end
