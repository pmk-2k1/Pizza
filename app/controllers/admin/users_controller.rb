class Admin::UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def destroy
    User.find(params[:id]).destroy
    redirect_to admin_users_path if current_user.admin?
  end
  def edit
    @user = User.find(params[:id])
  end
  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:full_name, :password, :phone_number, :admin, :reset_password_token, :address,
                                 :current_password, :password_confirmation)
  end
end