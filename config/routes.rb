Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
  #resources :home, only:[:index]
  resources :users, only:[:new, :create, :show]
  resources :sessions, only:[:new, :create]
  resources :posts, only:[:create]
  resources :comments, only:[:index, :new, :create]
  get 'log_out', to: 'sessions#log_out'
end
