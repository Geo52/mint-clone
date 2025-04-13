Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  root "plaid#index"
  get "dashboard/index"
  # get "plaid/accounts", to: "plaid#accounts"
  post "plaid/create_link_token", to: "plaid#create_link_token"
  post "plaid/exchange_public_token", to: "plaid#exchange_public_token"
end
