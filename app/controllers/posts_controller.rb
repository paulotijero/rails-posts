class PostsController < ApplicationController
  def index
    @posts = Post.all.includes(:user, :media, comments: [:user], likes: [:user])
  end
end