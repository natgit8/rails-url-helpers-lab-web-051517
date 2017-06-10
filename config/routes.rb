Rails.application.routes.draw do
  resources :students, only: [:index, :show]
  #changed to add show
  resources :students do
   member do
    get 'activate'
   end
  end

  # This show route can be refactored into the above resources method call, like so:
  # resources :students, only: [:index, :show]
  # However, for the sake of this lab and seeing how you can pass params through

  # the route, we'll keep it explicit for now and refactor later.
  # get "students/:id", to: "students#show"
  # get '/students', to: 'users#new', as: 'students'
  get '/students/:id/activate', to: 'students#activate', as: 'student_path'




end
