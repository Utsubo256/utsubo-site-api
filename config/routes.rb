Rails.application.routes.draw do
  namespace :api, format: 'json' do
    namespace :v1 do
      post '/auth', to: 'authentications#create'
      resources :morays, only: %i[index show] do
        resources :moray_comments, only: %i[index create destroy]
      end
      resources :aquaria, only: %i[index show] do
        resources :aquarium_comments, only: %i[index create destroy]
      end
      resource :profile, only: %i[show update]
    end
  end
end
