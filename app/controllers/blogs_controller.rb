class BlogsController < ApplicationController
  before_action :set_target_blog, only: %i[show edit update destroy]
  def index
    @blogs = Blog.all
  end

  def show
  end

  def new
    @blog =   Blog.new(flash[:blog])
  end

  def create
    blog = Blog.new(blog_params)
    if blog.save
      flash[:notice] = "#{blog.title}が登録されました。"
      redirect_to blogs_path
    else
      redirect_to new_blog_path, flash:{
        blog: blog,
        error_messages: blog.errors.full_messages
      }
    end
  end

  def edit
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update(blog_params)
      redirect_to @blog
    else
      redirect_to edit_blog_path, flash:{
        blog: @blog,
        error_messages: @blog.errors.full_messages
      }
    end
  end

  def destroy
    @blog.destroy
    redirect_to blogs_path, flash: { notice:  "「#{@blog.title}」の掲示板が削除されました。" }
  end

  private
  def blog_params
    params.require(:blog).permit(:name, :title, :body)
  end

  def set_target_blog
    @blog = Blog.find(params[:id])
  end
end
