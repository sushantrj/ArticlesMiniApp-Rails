Rails.application.routes.draw do
  #get 'about/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'welcome#index'
  get  'about', to: 'about#index'
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  resources :articles
end
