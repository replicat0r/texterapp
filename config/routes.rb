Rails.application.routes.draw do
  root to: 'visitors#index'
  post '/message', to: 'visitors#sendtext'
  get '/recieve', to: 'visitors#recievetext', as: 'messages_recieved'

end
