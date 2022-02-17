Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # user can see all the lists
  resources :lists, only: %i[index show new create]
end
