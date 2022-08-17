require 'counter'

RSpec.describe Counter do
  it "displays the current count" do
    counter = Counter.new()
    counter.add(101)
    result = counter.report()
    expect(result).to eq "Counted to 101 so far."
  end

  it "displays the count when add-ing 101, 10, 5000" do
    counter = Counter.new()
    counter.add(101)
    counter.add(10)
    counter.add(5000)
    result = counter.report()
    expect(result).to eq "Counted to 5111 so far."
  end
end
