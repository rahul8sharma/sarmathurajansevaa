Rails.application.routes.draw do
  resources :dailyupdates
  devise_for :users
  resources :contributors
  resources :news
  root to: 'homes#index'
  get 'homes/contact'
  get 'homes/team'
  get 'homes/video'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
