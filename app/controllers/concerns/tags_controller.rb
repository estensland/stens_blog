class TagsController < ApplicationController
  def index
    @blog_view = true
    @tags = Tag.all.sort_by(&:id).reverse
  end

  def show
    @blog_view = true
    @tag = Tag.find(params[:id])
    @posts = @tag.posts
  end
end