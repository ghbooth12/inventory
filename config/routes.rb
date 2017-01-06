Rails.application.routes.draw do
  resources :products do
    collection { get :download_list }
  end

  resources :home, only: [] do
    collection { post :import_csv }
    collection { post :import_csv_with_headers }
    collection { post :save_all }
  end
  get 'quick_import' => 'home#quick_import'

  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
