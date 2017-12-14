Rails.application.routes.draw do
  root "top#index"
  get  "about" => "top#about", as: "about"
 #get  "lesson/:action(/:name)" => "lesson"
 #root "main#index"
 #get  "info/company"
 #get  "help"  => "documents#help", as: "help"
 #get  "article/:year/:month" => "articles#show"
  post "login" => "session#login"

  #resources :members
  resources :members do
	  collection { get "search" }
  end
end

