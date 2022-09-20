Rails.application.routes.draw do
  resources :books 
    member do
      get :delete
    end
  end
  root 'books#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
