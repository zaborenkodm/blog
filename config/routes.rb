Rails.application.routes.draw do
  # указываем корневой маршрут по-умолчанию
  root 'posts#index'
  # и ресурс posts
  resources :posts
end
