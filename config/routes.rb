Rails.application.routes.draw do
  #devise_for :users
  root "projects#index"
  resources :projects
  devise_for :users, controllers: { sessions: "users/sessions" }
end
