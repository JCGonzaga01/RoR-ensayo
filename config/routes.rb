Rails.application.routes.draw do
  # ROOT ROUTE
  # The home page or the root route to be called when app is called
  root "demo#index"
  match "/" => "demo#index", :via => :get

  # SIMPLE ROUTE
  # Get is specified to any routes call the use get https
  get 'demo/index' => "demo#index"
  # while Match is specified to run the routes to any given http apis using ":via => [(array of http apis)]"
  # match "index" => "demo#index", :via => [:get]

  get "demo/hello"

  # DEFAULT ROUTE
  # ( ) = means optional in routes link.
  # get ':controller(/:action(/:id))'
  # # or
  # match ':controller(/:action(/:id))', :via => [:get, :post]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
