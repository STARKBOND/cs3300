require 'rails_helper'

RSpec.describe User, type: :model do
  it "should fail (user with no password)" do
    @user = User.create(email: "user@example.com", password: "password")
    expect(@user.email).to eq("user@example.com")
  end
end
