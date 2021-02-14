Rails.application.routes.draw do
  get 'users/profile'
  root "tasks#index"
  # get 'tasks/index'
  get 'user/profile', as: 'user_root'
  resources :tasks
end
