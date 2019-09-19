Rails.application.routes.draw do
  get 'mypage', to: 'users#me'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  root 'home#index'
  resources :blogs
  resources :comments, only: %i(create destroy)
  resources :users, only: %i(new create)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
