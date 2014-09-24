class SessionsController < ApplicationController

  def create
    @user = User.find_by_email_and_password( params[:email], params[:password] )

    if @user.present?
    	session[:user_id] = @user.id
    	flash[:notice] = "You're logged in!"
    	redirect_to root_path
    else
    	flash[:notice] = "I don't know who you are."
    	redirect_to root_path
    end

  end

  def destroy
  	session.delete(:user_id)
  	flash[:notice] = 'You are signed out'
  	redirect_to root_path
  end
  
end
