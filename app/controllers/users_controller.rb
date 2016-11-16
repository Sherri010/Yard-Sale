class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @owns= @user.items
  end
end
