require 'spec_helper'

describe 'EventuallyHelper' do
  include EventuallyHelper

  it 'test' do
    @test = ''
    outcome = 'test'
    eventually { @test = outcome }
    expect(@test).to eq outcome
  end

  it 'can attach to expect statements' do
    @test = lambda do
      responses = %w(duck duck goose goose).cycle
      -> { responses.next }
    end.call
    outcome = 'goose'

    eventually_expect { @test.call == outcome }.to be true
  end
end
