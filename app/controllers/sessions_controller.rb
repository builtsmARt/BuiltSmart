class SessionsController < ApplicationController
    def login

    end

    def create

      if request.xhr?
          session[:user_id] = params[:user_id]
          redirect_to '/'
      end

      @user = User.find_by(email: session_params[:email])
      if @user && @user.authenticate(session_params[:password])
        session[:user_id] = @user.id
        redirect_to '/'
      else
        @errors = ["Invalid email/password"]
        render 'sessions/login'
      end
    end

    def destroy
      session.clear
      redirect_to login_path
    end

    private

    def session_params
      params.require(:session).permit(:email, :password)
    end
end
