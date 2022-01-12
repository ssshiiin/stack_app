class PostsController < ApplicationController
  def save
    @post = Post.new(content: params[:content], user_id: session[:user_id])
    if @post.save
      flash[:notice] = "投稿完了です。明日も頑張ってください。"
      redirect_to("/users/#{session[:user_id]}")
    else
      flash[:notice] = "投稿に失敗しました"
      render("posts/show")
    end
  end
end
