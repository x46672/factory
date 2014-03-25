Factory::Application.routes.draw do
  resources :articles do
    resources :comments
  end
  resources :front
  resources :tags

  root 'front#index'

end
