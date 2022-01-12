class PostsController < ApplicationController
  require './app/lib/my_line_notify'
  
  def save
    @post = Post.new(content: params[:content], user_id: session[:user_id])
    @user = User.find_by(id: session[:user_id])
    if @post.save
      message = "\n[#{@user.name}]\n" + @post.content
      MyLineNofify.send(message: message)

      flash[:notice] = "投稿完了です。明日も頑張ってください。"
      redirect_to("/users/#{session[:user_id]}")
    else
      flash[:notice] = "投稿に失敗しました"
      render("users/show")
    end
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end
  
  def update
    @post = Post.find_by(id: params[:id])
    @post.content = params[:content]
    if @post.save
      flash[:notice] = "編集しました"
      redirect_to("/users/#{session[:user_id]}")
    else
      flash[:notice] = "編集に失敗しました"
      render("posts/edit")
    end
  end
  
  def destroy
    @post = Post.find_by(id: params[:id])
    if @post.destroy
      flash[:notice] = "削除しました"
      redirect_to("/users/#{session[:user_id]}")
    else
      flash[:notice] = "削除に失敗しました"
      redirect_to("/users/#{session[:user_id]}")
    end
  end
end
