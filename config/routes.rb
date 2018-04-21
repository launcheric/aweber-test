Rails.application.routes.draw do

  root 'homes#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'session/create'

  get 'session/destroy'
  get 'auth/aweber', :as => 'aweber_auth'
  match 'auth/:aweber/callback' => 'session#create', :via => [:get, :post]

  # get 'auth/developer', :as => 'developer_auth'
  # match 'auth/:provider/callback' => 'session#create', :via => [:get, :post]

end
