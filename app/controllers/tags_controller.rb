class TagsController < ApplicationController
  def show
    @tag = Tag.find(params[:id])
    render :show
  end

  def new
    @tag = Tag.new
    render :new
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def edit
    @tag = Tag.find(params[:id])
    render :edit
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
