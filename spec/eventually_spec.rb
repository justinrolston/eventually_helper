require 'spec_helper'

describe 'EventuallyHelper' do
  include EventuallyHelper

  it 'test' do
    @test = ''
    outcome = 'test'
    eventually { @test = outcome }
    expect(@test).to eq outcome
  end
end
