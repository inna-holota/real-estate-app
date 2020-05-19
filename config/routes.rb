Rails.application.routes.draw do
  resources :commercial_units
  resources :complex_buildings
  resources :houses

  root 'home#index'
  post ':asset_id/buy' => "home#buy", as: :buy_asset
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
