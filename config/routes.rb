Rails.application.routes.draw do
  devise_for :users
  resources :books, only: [:index, :create, :show, :edit, :update, :destroy]
  resources :users, only: [:show, :edit, :update, :index]


  root to: 'homes#top'
  get 'home/about' => 'homes#about',as: 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
