class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
    @tags = Tag.all.order(name: :asc)
    render :index
  end

  def show
    @post = Post.find(params[:id])
    @tags = @post.tags.order(name: :asc)
    @comments = @post.comments.order(created_at: :asc)
    render :show
  end

  def new
    @post = Post.new
    render :new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "Post successfully created"
      redirect_to posts_path
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
    render :edit
  end

  def update
    @post= Post.find(params[:id])
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, tag_ids: [])
  end
end
