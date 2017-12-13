Rails.application.routes.draw do
  root "top#index"
  get  "about" => "top#about", as: "about"
 #root "main#index"
 #get  "info/company"
 #get  "help"  => "documents#help", as: "help"
 #get  "article/:year/:month" => "articles#show"
  post "login" => "session#login"
end

