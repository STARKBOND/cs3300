require "rails_helper"

RSpec.describe UserMailer, :type => :mailer do
  describe "should succeed (create welcome email fields)" do
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

  describe "should succeed (create notify email fields)" do
    let(:mail) { UserMailer.notify_email }

    it "renders the headers" do
      expect(mail.subject).to eq("Check out these Project Portfolio examples!")
      expect(mail.to).to eq(["user@example.com"])
      expect(mail.from).to eq(["notifications@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Project portfolio examples")
    end
  end
end
