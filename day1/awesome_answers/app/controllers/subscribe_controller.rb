class SubscribeController < ApplicationController

  def index
  end

  def create
    @name = params[:name]
    @email = params[:email]
    #render text: "You have been subscribed!"
  end
end
