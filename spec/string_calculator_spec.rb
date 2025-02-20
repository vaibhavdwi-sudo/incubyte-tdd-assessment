# spec/string_calculator_spec.rb
require 'rspec'
require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  it "returns 0 for an empty string" do
    expect(StringCalculator.add("")).to eq(0)
  end
end
