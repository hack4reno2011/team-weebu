class GamesController < ApplicationController
  before_filter :authenticate, :only => [:new, :join]
  def new
     @game = Game.new
     @title = "Create Game"
  end

  def create
    @game = Game.new(params[:game])
    if @game.save
      flash[:success] = "Game Created!"
      redirect_to "/pages/home"
    else
      @title = "Create Game"
      render 'new'
    end
  end

  def join
     @title = "Home"
     redirect_to "/pages/home"
  end

  def view
     redirect_to "/pages/home"
  end

  private

    def authenticate
      deny_access unless signed_in?
    end
end
