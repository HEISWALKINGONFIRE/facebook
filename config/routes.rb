Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
  resources :users, :sessions
  get 'log_out', to: 'sessions#log_out'
end
