class TagsController < ApplicationController
  def index
    @blog_view = true
    @tags = Tag.all.sort_by(&:id)
  end

  def show
    @blog_view = true
    @tag = Tag.find(params[:id])
    @posts = @tag.posts.sort_by(&:id).reverse
  end
end