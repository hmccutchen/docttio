Rails.application.routes.draw do
 
root to: 'doctors#new'

 resources :doctors do 
 	resources :patients
 end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
