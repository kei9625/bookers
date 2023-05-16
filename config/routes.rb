Rails.application.routes.draw do
  root to: 'homes#top' #topページ
  resources :books
  #resourcesで下記は最適な物を自動生成されている。必要に応じてルートパスが変更されたら、最適化されたものに書き直す。
  #get '/books' => 'books#index'
  #post '/books' => 'books#create'
  #get '/books/:id' => 'books#show', as: 'book'
  #get '/books/:id/edit' => 'books#edit', as: 'edit_book'
  #patch '/books/:id' => 'books#update', as: 'update_book'
  #delete '/books/:id' => 'books#destroy', as: 'destroy_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
