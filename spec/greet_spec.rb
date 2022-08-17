require 'greet'

RSpec.describe "greet method" do
    it "gives string 'Hello, YourName' when called with 'YourName'" do
        result = greet("YourName")
        expect(result).to eq "Hello, YourName!"
    end
end
