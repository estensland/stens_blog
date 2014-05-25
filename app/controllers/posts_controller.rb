class PostsController < ApplicationController
  def index
    @blog_view = true
    @posts = Post.all.sort_by(&:id).reverse
  end

  def show
    @blog_view = true
    @post = Post.find(params[:id])
  end
end