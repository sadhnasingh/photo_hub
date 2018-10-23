class WelcomeController < ApplicationController
  def index
  	@images = Image.all
  end
  def gallery
  	@images = Image.all
  end
end
