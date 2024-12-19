Rails.application.routes.draw do
  root "events#index"
  devise_for :users, controllers: { registrations: "users/registrations" }
  resources :events, only: [ :index, :new, :create, :show ]
  resources :users, only: [ :index, :new, :create, :show ]
end
