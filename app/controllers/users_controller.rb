class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
  @user = User.new(first_name: params[:user][:first_name], last_name: params[:user][:last_name], email: params[:user][:email], password: params[:user][:password])
  @user.save
  redirect_to user_path(@user.id)
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    redirect_to user_path(@user.id)
  end

  def show
    @user= User.find(params[:id])
  end

  def destroy
  @user = User.find(params[:id])
  @user.destroy
end


  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name)
  end

end
