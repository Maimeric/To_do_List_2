Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  get 'users/profile', as: 'user_root'
  root "tasks#index", as: 'home_page'
  resources :tasks
  # do
  #   resources :users
  # end
end
