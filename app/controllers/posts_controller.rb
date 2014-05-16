class PostsController < ApplicationController
  def index
    @posts = Post.all.sort_by(&:id).reverse
  end

  def show
    @post = Post.find(params[:post_id])
  end
end