require 'boris_bikes'

describe Bike do
  it "a test"  do
    expect(subject.respond_to?(:working?)).to eq true
  end
end
