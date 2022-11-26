require "rails_helper"

RSpec.describe ProjectsController, type: :controller do
  before do
    @user = FactoryBot.create(:user)
    allow(controller).to receive(:authenticate_user!).and_return(true)
    allow(controller).to receive(:current_user).and_return(@user)
  end
  it "should pass (user email matches)" do
    expect(@user.email).to eq("user@example.com")
  end
  context "GET #index" do
    it "returns a success response" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  context "GET #show" do
    let!(:project) { Project.create(title: "Test title", description: "Test description") }
    it "returns a success response" do
      get :show, params: { id: project }
      expect(response).to have_http_status(:success)
    end
  end
end