class WelcomeController < ApplicationController
  def index
  	@images = Image.all
  	@family_images = FamilyImage.all
  end
  def gallery
  	@images = Image.all
  end
end
