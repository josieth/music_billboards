Rails.application.routes.draw do
  root "billboards#index"

  resources :billboards 
  #rails helper instead of: get "/billboards", to: "billboards#index"
end
