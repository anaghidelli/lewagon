Rails.application.routes.draw do
  namespace :admin do
    get 'restaurant/index'
  end
  resources :restaurants do
    collection do
      get "top", to: "restaurants#top"
    end
    member do                             # member => restaurant id in URL
      get 'chef'                          # RestaurantsController#chef
    end
    resources :reviews, only: [ :new, :create ]
  end
  namespace :admin do
    resources :restaurants, only: [:index]
  end
end

#restaurants/top
