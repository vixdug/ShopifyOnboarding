class UsersController < ApplicationController

  include ApplicationHelper

  def new
end

def index
end

def create
  user = User.new(user_params)
  if user.save
    session[:user_id] = user.id
    flash[:success] = "Woohoo!"
    redirect_to '/login'
  else
    redirect_to '/signup'
  end
end


private

def user_params
  params.require(:user).permit(:first_name, :email, :password, :password_confirmation)
end

end
