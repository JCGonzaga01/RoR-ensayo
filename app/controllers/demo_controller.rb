class DemoController < ApplicationController

  layout false 
  
  def index
    # Explicit Render of Views. 
    # By default RoR wil take the controller and method name to look for views html
    # but we can explicitly specify if we want to render different views from the method
    # syntax: render('{directory goes here, root is views folder}')
    render('demo/index')
  end

  def hello 
    render('hello')
  end
end
