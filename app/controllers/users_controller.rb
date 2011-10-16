class UsersController < ApplicationController
  def new
    @user = User.new
    @title = "Register"
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Account Created! Welcome to TeamUP!"
      redirect_to "/pages/home"
    else
      @title = "Register"
      render 'new'
    end
  end

end
