Rails.application.routes.draw do
  resources :ducks, only: [:index]
  resources :students, only: [:index]

  get "/students/new", to: "students#new"

  get "/students/:id", to: "students#show"

  post "/students/", to: "students#create"


  get "/students/:id/edit", to: "students#edit"

  patch "/students/:id", to: "students#update"


  #=============Duck Routes==================

  get "/ducks/new", to: "ducks#new"

  get "/ducks/:id", to: "ducks#show"
  
  post "/ducks", to: "ducks#create"

  get "/ducks/:id/edit", to: "ducks#edit"

  patch "/ducks/:id", to: "ducks#update"

end
