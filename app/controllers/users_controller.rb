class UsersController < ApplicationController
  def new
    @user=User.new
  end
  def create
    @user=User.new(params.require(:user).permit(:username, :email, :password))
    if(@user.save)
      flash[:notice]= "Welcome to alpha blog family"
      redirect_to articles_path
    else
      render 'new'
    end
  end 
  def edit
    @user=User.find(params[:id])
  end

  def update
    @user=User.find(params[:id])
    if @user.update(params.require(:user).permit(:username, :email, :password))
      flash[:notice]="User Data Updated"
      redirect_to articles_path
    else
      render 'edit'
    end
  end

end
