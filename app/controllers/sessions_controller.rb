class SessionsController < ApplicationController


 def create
  @user = User.find_by_email(params[:session][:email])
  if @user && @user.authenticate(params[:session][:password])
    session[:user_id] = @user.id
    redirect_to '/welcome'
  else
    redirect_to '/login'
  end 
end
def new
  end
def destroy 
  session[:user_id] = nil 
  redirect_to '/welcome' 
end
end
