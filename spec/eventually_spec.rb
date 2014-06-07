require 'spec_helper'

describe 'EventuallyHelper' do
  include EventuallyHelper

  it 'test' do
    @test = ''
    eventually { @test = 'test' }
    @test.should == 'test2'
  end
end
