class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
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
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to posts_path
    else
      flash.alert = "Error"
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])

    if @post.destroy
      flash.notice = "Record deleted"
      redirect_to posts_path
    else
      flash.alert = "Can't delete record"
      redirect_to posts_path
    end
  end

private

  def post_params
    params.require(:post).permit(:headline, :text)
  end
end
