class UserController < ApplicationController
  def index
  end
  def new
    @user = User.new(allowed_params)
    # redirect_to user_index_path
  end
  def create
    @user = User.new(allowed_params)
    @user.save
    redirect_to user_index
    flash[:notice] = "User succesfully created"
  end


  private
  def allowed_params

  end
end
