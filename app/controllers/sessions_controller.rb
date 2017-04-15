class SessionsController < ApplicationController
  def login
  end

  def create
    @user = User.find_by(firebase_uid: session_params[:firebase_uid])

    if @user && @user.authenticate(session_params[:password])
      session[:user_id] = @user.id
      redirect_to '/'
    else
      @errors = ["Invalid email/password"]
      redirect_to login_path
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end

  private

  def session_params
    params.require(:session).permit(:firebase_uid, :email, :password)
  end

end
