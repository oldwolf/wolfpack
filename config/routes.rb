Wolfpack::Application.routes.draw do
  resources :material_codes

  resources :box_styles

  resources :carton_boxes

  resources :products

  resources :categories

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users, :path_prefix => 'd'
  resources :users
end
