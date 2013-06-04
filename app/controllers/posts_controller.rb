class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create( params[:post] )
    flash[:notice] = "Your post has now been published!"
    redirect_to :root 
  end
end