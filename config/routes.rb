Factory::Application.routes.draw do
 resources :articles do
  resources :comments
  end
end
