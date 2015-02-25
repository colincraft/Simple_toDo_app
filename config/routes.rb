Rails.application.routes.draw do
  root "todos#index"

  get "/todos", to: "todos#index", as: "todos"

  post "/todos", to: "todos#create"

  delete "/todos", to: "todos#destroy"

  delete "/todos/:task", to: "todos#delete_one", as: "todo"

 end
