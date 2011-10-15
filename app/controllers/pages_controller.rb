class PagesController < ApplicationController
  def home
    @title = "Home"
  end

def signin
    @title = "Sign In"
  end

  def locations
    @title = "Locations"
  end

  def view
    @title = "View Game"
  end

  def create
    @title = "Create Game"
  end


end
