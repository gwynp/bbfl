Bbfl::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  get "users/index"
  get "keepers/alomar" => "keepers#alomar"
  get "keepers/barfield" => "keepers#barfield"
  resources :keepers

  devise_for :users
  resources :users
  
  root "keepers#index"
  get "contact" => "pages#contact"
  get "team" => "pages#team"
end
