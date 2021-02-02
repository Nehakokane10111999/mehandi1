Rails.application.routes.draw do
  resources :orders
  resources :feedbacks
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'sessions/welcome'
  resources :custs
  get 'cust/new'
  get 'cust/create'
  get 'cust/destroy'
  get 'cust/edit'
  get 'home/index'
root 'home#index'
get 'about/about'
get 'contact/contact'
get 'home/mehandi_designs'
get 'home/indian'
get 'home/arabic'
get 'home/bridal'
get 'home/pakistani'
get 'home/rajasathani'
resources :users
resources :sessions, only: [:new, :create, :destroy]
get 'signup', to: 'users#new', as: 'signup'
get 'login', to: 'sessions#new', as: 'login'
get 'logout', to: 'sessions#destroy', as: 'logout'
get 'welcome', to: 'sessions#welcome', as: 'welcome'

end
