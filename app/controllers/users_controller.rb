class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @owns= @user.items
  end

  def edit
    @user = User.find(current_user.id)
  end

  def updated
    @user = User.update_attribute(user_params)
  end

  private
  def user_params
     params.require(:user).permit(:username,:email,:password)
  end

end
