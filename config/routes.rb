Rails.application.routes.draw do
  resources :items, :users

  get '/users/:id/items', to:'users#items', as: 'user_items'
end
