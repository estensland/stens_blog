class ArchiveController < ApplicationController
  def index
    @blog_view = true
    @posts = Post.all.sort_by(&:id).reverse
  end
end