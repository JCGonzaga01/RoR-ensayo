class DemoController < ApplicationController

  layout false 
  
  def index
    # Explicit Render of Views. 
    # By default RoR wil take the controller and method name to look for views html
    # but we can explicitly specify if we want to render different views from the method
    # syntax: 
    # render('{directory goes here, root is 'views' folder}')
    # 
    # if no render specified, by default it will take the controller name then action
    # as basis to views html file.
    # e.g. demo/index or demo/hello
    render('demo/index')
  end

  def hello 
    # syntax to redirect action to different action.
    # useful when we wanna do some catching of errors.
    # syntax:
    #   redirect_to(:controller => {controller_name}, :action => {action_name})
    # if the redirection will happen on the same controller,
    # you can just remove the controller params.
    # if redirection will go to totally different site/url,
    # just specify the url as params e.g. redirect_to('https://new-site.com')
    # redirect_to(:controller => 'demo', :action => 'index')

    # You can also no need to specify the folder as by detault it will
    # look to the controller name as folder name basis
    # render('hello')

    # by adding @, the variable will now be available in the class itself and the template.
    # without @, it is just an ordinary variable inside the action
    @array = [1,2,3,4,5]


  end
end
