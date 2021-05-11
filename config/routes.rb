Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'weather', to: 'weather#index'
  post 'weather', to: 'weather#create'
  get 'weather/:id', to: 'weather#show'
end
