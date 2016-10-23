Rails.application.routes.draw do

  get 'homes/show'
  get 'homes/visits_by_day'

  resources :places, except: [:update, :edit, :destroy]
  root 'homes#show'

end