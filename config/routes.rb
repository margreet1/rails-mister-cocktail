Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "cocktails#index"
  resources :cocktails, only: [ :index, :show, :new, :create ] do
    resources :reviews, only: [:new, :create]
    resources :doses, only: [ :new, :create]
  end
  resources :doses, only: [ :destroy]
end
#     root to: 'cocktails#index'
#     resources :cocktails do
#       resources :doses, only: [:new, :create, :destroy]
#     end
# end


