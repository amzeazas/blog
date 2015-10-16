class PostsController < ApplicationController
  def index
    @posts = Post.all
    @tags = Tag.all
    render :index
  end

  def show
    @post = Post.find(params[:id])
    render :show
  end

  def new
    @post = Post.new
    render :new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
    render :edit
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :tag_ids)
  end
end
