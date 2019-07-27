Rails.application.routes.draw do
  resources :contact_forms
  root  'users#index' 
  resources :items, :users

  # get '/users/:id/items', to:'users#items', as: 'user_items'
end
