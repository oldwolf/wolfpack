Wolfpack::Application.routes.draw do
  resources :companies

  resources :currencies

  resources :partners

  resources :material_codes

  resources :box_styles

  resources :carton_boxes do
    get :autocomplete_box_style_name, :on => :collection
    get :autocomplete_material_code_name, :on => :collection
  end

  resources :products

  resources :categories

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users, :path_prefix => 'd'
  resources :users
end
