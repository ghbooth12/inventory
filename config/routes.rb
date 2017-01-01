Rails.application.routes.draw do
  resources :products do
    collection { get :download }
  end

  resources :home, only: [] do
    collection { post :import_csv }
    collection { post :save_all }
  end
  get 'quick_import' => 'home#quick_import'

  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
