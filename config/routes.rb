Rails.application.routes.draw do

  root 'homes#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'session/create'
  get 'session/destroy'

  get 'auth/developer', :as => 'developer_auth'
  match 'auth/:provider/callback' => 'session#create', :via => [:get, :post]

end

Rails.application.routes.draw do
namespace :api do
    namespace :v1 do
      resources :causes do
        resources :events
        resources :articles
      end
    end
  end
  resources :causes, to: "homes#index"
end
