#!/usr/bin/env ruby
require "rails_helper"

describe Test, type: :controller do
    context "test" do
        it "returns success" do
            get 

# RSpec.describe ProjectsController, type: :controller do
#     context "GET #index" do
#       it "returns a success response" do
#         get :index
#         expect(response).to have_http_status(:success)
#       end
#     end
  
#     context "GET #show" do
#       let!(:project) { Project.create(title: "Test title", description: "Test description") }
#       it "returns a success response" do
#         get :show, params: { id: project }
#         expect(response).to have_http_status(:success)
#       end
#     end
#   end

# RSpec.feature "Projects", type: :feature do
#   context "Create new project" do
#     before(:each) do
#       visit new_project_path
#       within("form") do
#         fill_in "Title", with: "Test title"
#       end
#     end

#     scenario "should be successful" do
#       fill_in "Description", with: "Test description"
#       click_button "Create Project"
#       expect(page).to have_content("Project was successfully created")
#     end

#     scenario "should fail" do
#       click_button "Create Project"
#       expect(page).to have_content("Description can't be blank")
#     end
#   end

#   context "Update project" do
#     let(:project) { Project.create(title: "Test title", description: "Test content") }
#     before(:each) do
#       visit edit_project_path(project)
#     end

#     scenario "should be successful" do
#       within("form") do
#         fill_in "Description", with: "New description content"
#       end
#       click_button "Update Project"
#       expect(page).to have_content("Project was successfully updated")
#     end

#     scenario "should fail" do
#       within("form") do
#         fill_in "Description", with: ""
#       end
#       click_button "Update Project"
#       expect(page).to have_content("Description can't be blank")
#     end
#   end

#   context "Remove existing project" do
#     let!(:project) { Project.create(title: "Test title", description: "Test content") }
#     scenario "remove project" do
#       visit projects_path
#       click_on "Show this project" # projects_path doesn't have a destroy button, but projects#show does... the question is how to visit projects_show in previous line?
#       click_on "Destroy this project"
#       expect(page).to have_content("Project was successfully destroyed")
#       expect(Project.count).to eq(0)
#     end
#   end
# end