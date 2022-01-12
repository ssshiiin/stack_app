class UsersController < ApplicationController
  def home
    @users = User.all
  end

  def login
    session[:user_id] = params[:id]
    @user = User.find_by(id: session[:user_id])
    flash[:notice] = "#{@user.name}さん、今日もお疲れ様です。"
    redirect_to("/users/index")
  end

  def index
    @users = User.all
  end

  def show
    @post = Post.new
    @user = User.find_by(id: params[:id])
  end

end
