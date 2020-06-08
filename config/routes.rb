# Rails.application.routes.draw do
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#   resources :students, only: [:index, :show]
#   # Points to the students model, and indicates to create routes for only the index and the show pages 

#   get '/students/:id/activate', to: 'students#activate', as: 'activate_student'

# end

Rails.application.routes.draw do
  resources :students, only: [:index, :show]
  get '/students/:id/activate', to: 'students#activate', as: 'activate_student'
end