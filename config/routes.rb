Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #this is the file where we place our routes
 #adding a root route
 root "articles#index"
 
 # get "/articles", to: "articles#index"
  #article to show one single detail using id
 # get "/articles/:id", to: "articles#show"
 resources :articles do
  resources :comments
 end
end
