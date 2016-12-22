Rails.application.routes.draw do
  resources :products
  get 'import_CSV' => "products#import_btn"

  root "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
