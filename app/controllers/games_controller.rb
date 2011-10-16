class GamesController < ApplicationController
  before_filter :authenticate, :only => [:new, :join]

  def new
     @game = Game.new
     @title = "Create Game"
  end

  def create
    @game = Game.new(params[:game])
    @game.creator=current_user.name
    @game.numplayers=1
    if @game.save
      flash[:success] = "Game Created!"
      redirect_to "/pages/home"
    else
      @title = "Create Game"
      render 'new'
    end
  end

  def join
     @id = params[:id]
     @game = Game.find(@id)
     if @game.creator == current_user.name
       flash[:error] = "You are already in this game!"
       @title = "Home"
       redirect_to "/pages/home"
     else
      flash[:success] = "You have joined the game"
      @title = "Home"
      @game.numplayers+=1
      @game.save
      redirect_to "/pages/home"
     end
  end

  def view
     redirect_to "/pages/locations"
  end

  private

    def authenticate
      deny_access unless signed_in?
    end
end
