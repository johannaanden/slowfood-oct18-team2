class UserController < ApplicationController
  def index
  end
  def new
    @user = User.new(allowed_params)
    # redirect_to user_index_path
  end


  private
  def allowed_params

  end
end
