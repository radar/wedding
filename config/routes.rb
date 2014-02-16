Wedding::Application.routes.draw do
  get '/table/list' => 'table#list'
  get '/table/:id' => 'table#show'
  get '/people/list' => 'people#list'
  resources :people
  root :to => 'people#index'
end
