Rails.application.routes.draw do
  get 'blogs', to: "blogs#new"
  get 'blogs', to: "blogs#index"

  get 'sessions/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
end
