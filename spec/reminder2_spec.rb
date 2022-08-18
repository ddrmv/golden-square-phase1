require 'reminder2'

RSpec.describe Reminder2 do
  context "when no task is set" do
    it "fails" do
      reminder = Reminder2.new("Kay")
      expect { reminder.remind() }.to raise_error "No reminder set!"
    end
  end
end