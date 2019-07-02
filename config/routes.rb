Rails.application.routes.draw do
  resources :coupons

  get 'coupons/:id', to: 'coupons#show', as: "show"

end
