class CommentsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
    @user = current_user
    render :new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    @user = current_user
    if @comment.save
      flash[:notice] = "Comment successfully created"
      respond_to do |format|
        format.html { redirect_to post_path(@post) }
        format.js
      end
    else
      render :new
    end
  end

  def edit
    @comment = Comment.find(params[:id])
    @post = Post.find(@comment.post.id)
    @user = current_user
    render :edit
  end

  def update
    @comment = Comment.find(params[:id])
    @post= Post.find(@comment.post.id)
    @user = current_user
    if @comment.update(comment_params)
      flash[:notice] = "Comment successfully updated."
      respond_to do |format|
        format.html { redirect_to post_path(@post) }
        format.js
      end
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

  private
  def comment_params
    params.require(:comment).permit(:text, :user_id)
  end
end
