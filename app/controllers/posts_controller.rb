class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC")
  end

  def create
    post = Post.create(content: params[:content]) # 追記する
    render json:{ post: post}
  end
end
