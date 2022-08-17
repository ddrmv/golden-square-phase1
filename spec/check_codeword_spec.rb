require 'check_codeword'

RSpec.describe "check_codeword method" do
    it "says 'Correct! Come in.' when called with 'horse'" do
        expect(check_codeword('horse')).to eq "Correct! Come in."
    end

    it "says 'Close, but nope.' when called with 'house'" do
        expect(check_codeword('house')).to eq "Close, but nope."
    end

    it "says 'WRONG!' when called with 'password123'" do
        expect(check_codeword('password123')).to eq "WRONG!"
    end

end