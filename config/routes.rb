Rails.application.routes.draw do
  namespace :api do
    get 'recipes/index'
    post 'recipes/create'
    get '/show/:id', to: 'recipes#show'
    put '/update/:id', to: 'recipes#update'
    delete '/destroy/:id', to: 'recipes#destroy'
  end

  root 'homepage#index'
  get '/*path' => 'homepage#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
