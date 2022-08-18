require 'gratitudes'

RSpec.describe Gratitudes do
  it "returns string when there is no input" do
    gratitudes = Gratitudes.new
    expect(gratitudes.format).to eq "Be grateful for: "
  end

  it "returns text including multiple additions" do
    gratitudes = Gratitudes.new
    gratitudes.add("smiles")
    gratitudes.add("songs")
    gratitudes.add("salt")
    expect(gratitudes.format).to eq "Be grateful for: smiles, songs, salt"
  end
end