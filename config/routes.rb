Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home', as: 'landing'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :plants, only: [ :index, :show ] do
    resources :bookings, only: [ :create ]
  end

  resources :bookings, only: [ :index] do
    member  do
      patch :accept
      patch :deny
    end
  end

  namespace :owner do
    resources :plants, only: [ :index, :new, :create ]
  end
end


  # get '/plants',                      to: 'plants#index', as: 'plants'
  # get '/plants/:id',                  to: 'plants#show', as: 'plant'
  # post '/plants/:plant_id/bookings',  to: 'bookings#create'
  # get '/bookings',                    to: 'bookings#index', as: 'bookings'
  # patch '/bookings/:id',              to: 'bookings#accept'
  # patch '/bookings/:id',              to: 'bookings#deny'
  # get '/owner/plants',                to: 'owner/plants#index', as: 'plants_user'
  # get '/owner/plants/new',            to: 'owner/plants#new', as: 'new_plant'
  # post '/owner/plants/',              to: 'owner/plants#create'

