Rails.application.routes.draw do
  resources :blogs
  resources :tops
  #root 'messages#index'
  resources :ti_tles
  resources :messages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
