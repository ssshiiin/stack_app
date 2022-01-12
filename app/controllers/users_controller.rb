class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def show
    flash[:notice] = "今日もお疲れ様です。"
    @user = User.find_by(name: params[:name])
  end
end
