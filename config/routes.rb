Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/sports" => "sports#index"
    get "/sports/:id" => "sports#show"
    post "/sports" => "sports#create"
    patch "/sports/:id" => "sports#update"
    delete "/sports/:id" => "sports#delete"
    
  end
  
  
end
