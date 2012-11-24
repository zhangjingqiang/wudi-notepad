WudiNotepad::Application.routes.draw do
  devise_for :users
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  
  resources :notepads
  root :to => 'home#index'
end
