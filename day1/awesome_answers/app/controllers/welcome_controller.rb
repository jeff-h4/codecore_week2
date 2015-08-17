class WelcomeController < ApplicationController

  # setting the layout in here changes thedefault laytou
  # for all the actions in this controller
  # # layout "special"
  #
  def index
    #render({text: "Hello World"})
    #render text: "Hello World"
    render :index
  end

  # Rails automattically renders a template with the views subfolder matching
  # the controllers name. in this case the welcome folder.
  # I tt will look for a file with the appropriate format
  #
  #render (:index, {layout: "application"})

  # every controller action must have a single render action
end
