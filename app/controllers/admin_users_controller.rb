class AdminUsersController < ApplicationController
  before_action authenticate_admin! [:index, :show, :destroy]
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admin_users_path
  end
  # private

  # def user_params
  #   params.require(:user).permit(:nick_name, :user_profile, :age, :gender, :job, :blood_type)
  # end
end
