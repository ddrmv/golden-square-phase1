require 'report_length'

describe "report_length method" do
    it "returns 'This string was 13 characters long.' if given 'golden square'" do
        result = report_length("golden square")
        expect(result).to eq "This string was 13 characters long."
    end

    it "returns 'This string was 0 characters long.' when providing empty line" do
        result = report_length("")
        expect(result).to eq "This string was 0 characters long."
    end

    it "returns 'This string was 11 characters long.' when given ' pa33w0rd! '" do
        result = report_length(" pa33w0rd! ")
        expect(result).to eq "This string was 11 characters long."
    end

end
