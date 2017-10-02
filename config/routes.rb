Rails.application.routes.draw do
  
  get "/", to: "sites#index"
  
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

  get '/cursos/new', to: 'cursos#new'
  get '/cursos/edit/:id', to: 'cursos#edit', as: 'edit_curso'
  delete '/cursos/delete/:id', to: 'cursos#destroy', as: 'delete_curso'
  post '/cursos', to: 'cursos#create'
  patch '/cursos/:id', to: 'cursos#update'
  get '/cursos/:id', to: 'cursos#show', as: 'curso'
  get '/cursos', to: 'cursos#index'

  patch '/materias/:id', to: 'materias#update'
  delete '/materias/:id', to: 'materias#destroy', as: 'delete_materia'
  post '/materias', to: 'materias#create'
  get '/materias/edit/:id', to: 'materias#edit', as: 'edit_materia'
  get '/materias/new', to: 'materias#new'
  get '/materias/:id', to: 'materias#show', as: 'materia'
  get '/materias', to: 'materias#index'

  patch '/salas/:id', to: 'salas#update'
  delete 'salas/:id', to: 'salas#destroy', as: 'delete_sala'
  post '/salas', to: 'salas#create'
  get '/salas/new', to: 'salas#new'
  get '/salas/:id/edit', to: 'salas#edit', as: 'edit_sala'
  get '/salas/:id', to: 'salas#show', as: 'sala'
  get '/salas', to: 'salas#index'
  
end
