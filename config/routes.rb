Rails.application.routes.draw do
  root to: 'readings#index'
  devise_for :users
  post 'readings/new', to: "readings#new"
end
