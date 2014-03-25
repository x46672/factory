Factory::Application.routes.draw do
  resources :articles do
    resources :comments
  end
  resources :front
  resources :tags
  resources :authors

  root 'front#index'

  resources :author_sessions, only: [ :new, :create, :destroy ]

  get 'login'  => 'author_sessions#new'
  get 'logout' => 'author_sessions#destroy'

end
