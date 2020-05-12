class PostsController < ApplicationController
  before_action :move_to_index, except: [:index, :search]
  before_action :authenticate_user!

  def index
    @posts = Post.where(user_id: current_user.id)
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to root_path
  end

  def show
    @post = Post.find(params[:id])
    @posts = Post.includes(:user)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to post_path(post.id)
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to root_path
  end

  private
  def post_params
    params.require(:post).permit(:hospital, :holiday, :image, :number, :subject, :tell).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end