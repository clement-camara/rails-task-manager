Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # lire les tasks
  get "tasks", to: "tasks#index"
  # lire une task
  get "tasks/new", to: "tasks#new"
  get "tasks/:id", to: "tasks#show", as: :task
  # add a task

  post "tasks", to: "tasks#create"
  # edith a task
  get "tasks/:id/edith", to: "tasks#edit"
  patch "tasks/id", to: "tasks#update"
  # suprimer une task
  delete "tasks/:id", to: "tasks#destroy"
end
