Rails.application.routes.draw do
  # List all tasks
  get 'tasks', to: 'tasks#index', as: 'tasks'

  # Create forms
  get 'tasks/new', to: 'tasks#new'

  # List one task
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # Create Tasks
  post 'tasks', to: 'tasks#create'

  #edit form
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'

  #update the task
  patch 'tasks/:id', to: 'tasks#update'

  #delete a task
  delete 'tasks/:id', to: 'tasks#destroy'
end
