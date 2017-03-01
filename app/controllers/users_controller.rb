class UsersController < ApplicationController

  #index
  def index
    if current_user
      if current_user.id == 1
          @users = User.all
        else
          redirect_to root_url
      end
    else
      redirect_to root_url
    end
  end

  #show
  def show
    if current_user
        @user = User.find(params[:id])
      else
        redirect_to root_url
    end
  end

  #edit
  def edit
    @user = User.find(params[:id])
    if current_user
      if current_user.id == 1
          @user = User.find(params[:id])
        elsif current_user == @user
          @user = User.find(params[:id])
        else
          redirect_to root_url
      end
    else
      redirect_to root_url
    end
  end

  #update
  def update
    if current_user
      if current_user.id == 1
        @user = User.find(params[:id])
        @user.update(user_params)
        redirect_to user_path(@user)
        elsif current_user == @user
          @user = User.find(params[:id])
          @user.update(user_params)
          redirect_to user_path(@user)
        else
          redirect_to root_url
      end
    else
      redirect_to root_url
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :name, :age, :image)
  end


end
