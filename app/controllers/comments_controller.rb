class CommentsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
    render :new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    if @comment.save
      flash[:notice] = "Comment successfully created"
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def edit
    @comment = Comment.find(params[:id])
    @post= Post.find(@comment.post.id)
    render :edit
  end

  def update
    @comment = Comment.find(params[:id])
    @post= Post.find(@comment.post.id)
    if @comment.update(comment_params)
      redirect_to post_path(@post)
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
    params.require(:comment).permit(:text)
  end
end
