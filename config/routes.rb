Rails.application.routes.draw do
  namespace :api, format: 'json' do
    namespace :v1 do
      post '/auth', to: 'authentications#create'
      resources :morays, only: %i[index]
      resources :aquaria, only: %i[index]
      resource :profile, only: %i[show]
    end
  end
end
