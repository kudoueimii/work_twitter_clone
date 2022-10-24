class BlogsController < ApplicationController

  def create
    Blog.create(blog_params)
    redirect_to blogs_path
  end

  def new
    @blog = Blog.new
    
  end

  def index
    @blogs = Blog.all
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update(blog_params)
      redirect_to blogs_path, notice: "ブログを編集しました！"
    else
      render :edit
    end
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to blogs_path, notice:"ブログを削除しました！"
  end

  
  private

  def blog_params
    params.require(:blog).permit(:title, :content)
  end
end

