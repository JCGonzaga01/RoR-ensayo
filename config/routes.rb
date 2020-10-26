Rails.application.routes.draw do

  root "demo#index"
  
  get "demo/index"
  get "demo/hello"
  get "demo/about"
  get "demo/contact"



  # Different types of routes implementation
  # ROOT ROUTE
  # The home page or the root route to be called when app is called without any params.
  # root "demo#index"
  #  or
  # match "/" => "demo#index", :via => :get

  # SIMPLE MATCH ROUTE
  # "get" is specified to any routes call that use get https
  # structure:
  #   get {routes} => {action in controller}
  # you can also do shorthand if the routes structure is the same with action in controller
  # e.g.
  # From: get "demo/index" => "demo#index"
  # To: get "demo/index"
  # 
  # "match" is specified to run the routes to any given http apis using ":via => [(array of http apis)]"
  # structure:
  #   match {routes}, :to => {action in controller}, :via => [(array of possible apis)]
  # e.g:
    # match "anyRoutesName", :to => "demo#index", :via => [:get]
  # "anyRoutesName" is the request routes or URL, then it will call the assigned action
  
  # DEFAULT ROUTE
  # This is a more structural type of routing where it follow the below structuring:
  # '':controller/:action/:id'
  # e.g.
  # get ':controller(/:action(/:id))'
  # ( ) = means optional in routes link.
  # get 'students/edit/1'
  # it will call the StudentsController then look for Edit action then pass the 1 id as parameter
  # or
  # match ':controller(/:action(/:id))', :via => [:get, :post]
  # NOTE:
  # Default Route must ALWAYS be declared after the Simple Match Route to avoid conflict
  # in calling the correct controller. This is due to the reason that Default Route is 
  # dynamic where it will pass any routes as long as it satisfies the default route structure.

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
