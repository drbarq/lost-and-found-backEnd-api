Rails.application.routes.draw do
  root  'users#index' 
  resources :items, :users

  get '/users/:id/items', to:'users#items', as: 'user_items'
end
