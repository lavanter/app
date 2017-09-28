Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/institutos', to: 'institutos#index'
  post '/institutos', to: 'institutos#create'
  get '/institutos/new', to: 'institutos#new', as: 'new_instituto'
  get 'institutos/:id/edit', to: 'institutos#edit', as: 'edit_instituto'
  get '/institutos/:id', to: 'institutos#show', as: 'instituto'
  patch 'institutos/:id', to: 'institutos#update'
  delete 'institutos/:id', to: 'institutos#destroy', as: 'delete_instituto'
end
