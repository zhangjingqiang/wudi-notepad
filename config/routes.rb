WudiNotepad::Application.routes.draw do
  devise_for :users
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  
  resources :notepads

  get '/search', to: 'notepads#search', as: 'notepads_search'

  root :to => 'home#index'
end
