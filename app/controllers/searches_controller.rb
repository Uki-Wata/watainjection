class SearchesController < ApplicationController
  def search
    @range = params[:range]

    if @range == "User"
      @users = User.looks(params[:search], params[:word])
      render "/searches/search_result"
    elsif @range == "Post"
      @posts = Post.looks(params[:search], params[:word])
      render "/searches/search_result"
    end
  end

  def search_result

  end 



end
