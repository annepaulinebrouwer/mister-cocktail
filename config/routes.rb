Rails.application.routes.draw do

 root "cocktails#index"
 resources :cocktails, only: [:index, :show, :create, :new] do
    resources :doses, only: [:new, :create, :delete]
 end
end
