Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'cocktails#index'
  mount Attachinary::Engine => "/attachinary"
  resources :cocktails do
    resources :reviews, only: [:new, :create]
    resources :doses, :shallow => true
  end
end
