require 'string_builder'

RSpec.describe StringBuilder do
  it "displays size when no input given" do
    string_builder = StringBuilder.new
    expect(string_builder.size).to eq 0
  end

  it "displays empty string when no input given" do
    string_builder = StringBuilder.new
    expect(string_builder.output).to eq ""
  end

  it "when adding many inputs displays size" do
    string_builder = StringBuilder.new
    string_builder.add("H")
    string_builder.add("el")
    string_builder.add("lo,")
    string_builder.add(" World!")
    expect(string_builder.size).to eq 13
  end

  it "when adding many inputs displays concatenated string" do
    string_builder = StringBuilder.new
    string_builder.add("H")
    string_builder.add("el")
    string_builder.add("lo,")
    string_builder.add(" World!")
    expect(string_builder.output).to eq "Hello, World!"
  end
end