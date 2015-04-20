Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
     resources :users
   end
  
  resources :welcome, only: [:index]
  
  root 'welcome#index'
end
