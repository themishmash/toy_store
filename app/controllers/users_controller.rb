class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy] #don't need .find(params[:id])
  
  def index
    @users = User.all
  end

  def show
    @user = User.all
  end

  def edit
    
  end

  def new
    @user = User.new
  end 

  def create
    if @user.save
      redirect_to @user, notice: "User successfully created"
    else 
      render 'new'
    end 
  end 

  def update
    if @user.update(user_params)
      redirect_to @user, notice: "User successfully updated"
    else
      render 'edit'
    end 
  end 

  def destroy
    @user.destroy
    redirect_to root_path, notice: "user successfully deleted"
  end
  
  private
  def set_user
    @user = User.find(params[:id])
  end 

  def user_params
    params.require(:user).permit(:email, :password)
  end 
end
