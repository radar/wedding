Wedding::Application.routes.draw do
  get '/table/list' => 'table#list', as: 'table_list'
  get '/table/:id' => 'table#show'
  get '/people/list' => 'people#list', as: 'people_list'
  get '/photos' => 'photos#index', as: 'photos'
  resources :people
  root :to => 'people#index'
end
