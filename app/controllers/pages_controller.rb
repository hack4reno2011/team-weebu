class PagesController < ApplicationController
  def home
    @title = "Home"
    @games = Game.all
  end


  def locations
    @title = "Locations"
    @location = Location.find(:all)
  end

  def view
    @title = "View Game"
  end

  def create
    @title = "Create Game"
  end


end
