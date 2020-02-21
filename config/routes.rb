Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails
  # root to: 'pages#home'
  resources :ingredients

  resources :doses, only: [ :new, :create, :destroy ]
end
