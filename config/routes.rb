Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'mainpages#index'

  resources :works
  resources :users do
    resources :votes, only: [:new]
  end
  
end
