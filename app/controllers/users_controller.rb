class UsersController < ApplicationController
  def new
  @user = User.new
end
def update
@user = User.find(params[:id])

  if @user.update_attribute(:role, 1)
    redirect_to '/login'
  end
end
def create
  @user = User.new(user_params)

  if @user.save
    redirect_to '/login'
  else
    render 'new'
  end
end

def show
  @user = User.find(params[:id])
end

private

def user_params
  params.require(:user).permit(:email, :password, :fullname, :alamat)
end
end
