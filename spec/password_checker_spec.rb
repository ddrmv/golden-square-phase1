require 'password_checker'

RSpec.describe PasswordChecker do
  it "fails if string is too short" do
    password_checker = PasswordChecker.new()
    expect{ password_checker.check("1234567") }.to raise_error "Invalid password, must be 8+ characters."
  end

  it "returns true if password is 8 characters" do
    password_checker = PasswordChecker.new()
    expect(password_checker.check("12345678")).to eq true
  end

  it "returns true if password is longer than 8 characters" do
    password_checker = PasswordChecker.new()
    expect(password_checker.check("123456789")).to eq true
  end
end