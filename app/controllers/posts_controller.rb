class PostsController < ApplicationController
  require './app/lib/my_line_notify'
  
  def save
    @post = Post.new(content: params[:content], user_id: session[:user_id])
    @user = User.find_by(id: session[:user_id])
    if @post.save
      MyLineNofify.send(message: @post.content)

      flash[:notice] = "投稿完了です。明日も頑張ってください。"
      redirect_to("/users/#{session[:user_id]}")
    else
      flash[:notice] = "投稿に失敗しました"
      render("users/show")
    end
  end
end
