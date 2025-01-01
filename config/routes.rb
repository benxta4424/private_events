Rails.application.routes.draw do
  root "events#index"
  devise_for :users, controllers: { registrations: "users/registrations" }
  resources :events, only: [ :index, :new, :create, :show, :edit, :destroy, :update ]
  resources :users, only: [ :index, :new, :create, :show ]
  resources :attendances, only: [ :new, :create, :show ]
end
