Rails.application.routes.draw do
  get 'top/index'
  get 'top/new'
  get 'top/create'
  get 'tests/top'
  get '/' => "homes#top"
  get "/index" => "homes#index"

  root to: 'tops#index'
  resources :tops

  resources :images, only: [:index, :new]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
