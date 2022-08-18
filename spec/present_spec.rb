require 'present'

RSpec.describe Present do
  it "fails when given second contents to wrap" do
    present = Present.new()
    present.wrap("flowers")
    expect { present.wrap("more flowers") }.to raise_error "A contents has already been wrapped."
  end
  
  context "initially" do
    it "fails unwrapping" do
      present = Present.new()
      expect { present.unwrap() }.to raise_error "No contents have been wrapped."
    end
  end
end