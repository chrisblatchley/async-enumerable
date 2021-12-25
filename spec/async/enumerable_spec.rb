# frozen_string_literal: true

RSpec.describe Async::Enumerable do
  it "has a version number" do
    expect(Async::Enumerable::VERSION).not_to be nil
  end

  it "each_async returns the collection" do
    coll = 1.upto(3)
    expect(coll.each_async { |v| sleep 0.0001 * v }).to eq(coll)
  end

  it "each_async takes the amount of time to process a single value" do
    now = Time.now
    1.upto(10).each_async { |_v| sleep 0.1 }
    t_diff = Time.now - now
    expect(t_diff).to be < 0.2
  end
end
