class UsersController < ApplicationController
  def new
    @user=User.new
  end
  def create
    @user=User.new(params.require(:user).permit(:username, :email, :password))
    
  end 
end
