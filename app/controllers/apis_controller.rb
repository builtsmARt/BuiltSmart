class ApisController < ApplicationController
  def bookmarks
   @bookmarks = Bookmark.all
   render json: @bookmarks
 end

 def user_bookmarks
   @user_bookmarks = User.find_by_id(params[:id]).bookmarks
   render json: @user_bookmarks
 end

 def user_products
   @user_products = User.find_by_id(params[:id]).products
   render json: { results: @user_products }
 end

 def products
   @products = Product.all
   render json: { results: @products }
 end

 def users
   @users = User.all
   render json: @users
 end

 def valid_login
   @user = User.find_by_email(session_params[:email])
   if @user && @user.authenticate(session_params[:password])
     render json: @user
   else
     render json: "Invalid Login"
   end
 end

 private

 def session_params
   params.require(:session).permit(:email, :password)
 end
end
