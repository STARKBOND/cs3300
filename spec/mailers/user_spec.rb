require "rails_helper"

RSpec.describe UserMailer, :type => :mailer do
  describe "should succeed (create email fields)" do
    let(:mail) { UserMailer.welcome_email }

    it "renders the headers" do
      expect(mail.subject).to eq("Welcome to your projects portfolio")
      expect(mail.to).to eq(["user@example.com"])
      expect(mail.from).to eq(["notifications@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Welcome to example.com")
    end
  end
end