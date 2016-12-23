Rails.application.routes.draw do
  resources :products

  resources :home, only: [:import_csv] {collection { post :import_csv }}
  get 'quick_import' => 'home#quick_import'
  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
