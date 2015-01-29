class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find_by_slug(params[:id])
  end

  def edit
    @post = Post.find_by_slug(params[:id])
  end

  def update
    @post = Post.find_by_slug(params[:id])
    if @post.update_attributes(post_params)
      redirect_to posts_path, :flash => { :success => "Post updated." }
    else
      render 'edit'
    end
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path, :flash => { :success => "Post created." }
    else
      render 'new'
    end
  end

  def destroy
    Post.find_by_slug(params[:id]).destroy
    redirect_to posts_path, :flash => { :success => "Post deleted." }
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
