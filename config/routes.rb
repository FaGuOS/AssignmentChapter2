Rails.application.routes.draw do
  get '/books' => 'books#index'
  post '/books' => 'books#create'
  resources :books, only: [:new, :create, :show, :destroy, :update, :index]
  get 'books/:id' => 'books#show', as: 'show_book'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  root "homes#top"
end

