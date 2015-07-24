Rails.application.routes.draw do
  root to: 'electricians#index'
  post '/message', to: 'visitors#sendtext'

resources :electricians do
  collection { post :import }
end
end
