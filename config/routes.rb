Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/institutos', to: 'institutos#index'
  post '/institutos', to: 'institutos#create'
  get '/institutos/new', to: 'institutos#new', as: 'new_instituto'
  get 'institutos/:id/edit', to: 'institutos#edit', as: 'edit_instituto'
  get '/institutos/:id', to: 'institutos#show', as: 'instituto'
  patch 'institutos/:id', to: 'institutos#update'
  delete 'institutos/:id', to: 'institutos#destroy', as: 'delete_instituto'

  get '/periodos', to: 'periodos#index'
  post '/periodos', to: 'periodos#create'
  get '/periodos/new', to: 'periodos#new', as: 'new_periodo'
  get '/periodos/:id/edit', to: 'periodos#edit', as: 'edit_periodo'
  get '/periodos/:id', to: 'periodos#show', as: 'periodo'
  patch '/periodos/:id', to: 'periodos#update'
  delete '/periodos/:id', to: 'periodos#destroy', as: 'delete_periodo'
end
