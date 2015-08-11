Rails.application.routes.draw do
    root to: 'electricians#index'
    post '/message', to: 'electricians#sendtext'
    post '/sendtext', to: 'electricians#sendservice'
    post '/sendmail', to: 'electricians#sendmail'
    post 'twilio/voice' => 'twilio#voice'
    post 'twilio/sms' => 'twilio#sms'
    match ':link' => 'content_pages#index' ,via: :get
    resources :electricians do
        collection { post :import }
    end
end
