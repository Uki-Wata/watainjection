class HomeController < ApplicationController
  before_action :login_user
  def login_user
      @login_user = nil
      # puts aaaa
      unless cookies[:user_id].nil?
          @login_user = User.find_by(id: cookies[:user_id])
      end 
  end 
  def index
    @posts = Post.all
    @private_posts = Post.where(private: true)
    @public_posts = Post.where(private: false).where(paid: false)
    @paid_posts = Post.where(paid: true)
    @free_posts = Post.where(paid: false)
    
  end
end
