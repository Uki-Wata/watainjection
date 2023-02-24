class Post < ApplicationRecord
  belongs_to :user

  def self.looks(search, word)
    if search == "perfect_match"
      @post = Post.where("title LIKE?","#{word}")
    elsif search == "forward_match"
      @post = Post.where("title LIKE?","#{word}%")
    elsif search == "backward_match"
      @post = Post.where("title LIKE?","%#{word}")
    elsif search == "partial_match"
      @post = ActiveRecord::Base.connection.execute("SELECT * FROM posts WHERE title LIKE '#{word}'")
      
    else
      @post = Post.all
    end
  end 
end
