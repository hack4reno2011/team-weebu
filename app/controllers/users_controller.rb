class UsersController < ApplicationController
  def new
    @user = User.new
    @title = "Register"
  end

end
