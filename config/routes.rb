Rails.application.routes.draw do
  get 'tests/top'
  get '/' => "homes#top"
  get "/index" => "homes#index"
  resources :images, only: [:index, :new]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
