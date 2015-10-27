class TagsController < ApplicationController
  def show
    @tag = Tag.find(params[:id])
    @posts = @tag.posts.order(created_at: :desc)
    render :show
  end

  def new
    @tag = Tag.new
    render :new
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      flash[:notice] = "Tag successfully created"
      respond_to do |format|
        format.html { redirect_to new_post_path }
        format.js
      end
    else
      flash[:alert] = "Tag not created"
      render :new
    end
  end

  def edit
    @tag = Tag.find(params[:id])
    render :edit
  end

  def update
    @tag= Tag.find(params[:id])
    if @tag.update(tag_params)
      redirect_to posts_path
    else
      render :edit
    end
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    redirect_to posts_path
  end

  private
  def tag_params
    params.require(:tag).permit(:name)
  end
end
