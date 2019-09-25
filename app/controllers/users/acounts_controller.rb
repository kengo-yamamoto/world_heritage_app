class Users::AcountsController < ApplicationController
    def show
        @user = current_user
    end
    def update
        @user = current_user
        @user.update
        redirect_to users_acount_path(@user.id)
    end
    def destroy
        @user = current_user
        @user.destroy
        redirect_to root_path
    end
end
