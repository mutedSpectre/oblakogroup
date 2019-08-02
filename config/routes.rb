Rails.application.routes.draw do

  put 'update_todo', to: 'todos#update', as: :update_todo

  resources :todos
  resources :projects

  root 'todos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
