Rails.application.routes.draw do
  root to: 'home#home'
  post "/temp_records/new", to: "temp_records#new"
  devise_for :users
  post 'readings/new', to: "readings#new"
  resources :utility_bills
end
