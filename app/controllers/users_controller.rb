class UsersController < ApplicationController
    def index
    end

    def new
      @user = User.new
    end

    def create
      @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to @user
      else
        @errors = @user.errors.full_messages
        render :new
      end
    end

    def show
      require_user
      authorize(params[:id])
      @user = User.find_by_id(params[:id])
    end

    private

    def user_params
      params.require(:user).permit(:full_name, :email, :password, :firebase_uid)
    end
end
