Rails.application.routes.draw do
  # указываем корневой маршрут по-умолчанию
  root 'posts#index'
  # и ресурс posts
  resources :posts
  resources :pictures, only: [:create, :destroy]
  resources :tags, only: [:show]
  resources :categories
end
