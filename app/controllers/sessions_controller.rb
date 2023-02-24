class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    search_name = params[:name]
    search_password = params[:password]
    @users = ActiveRecord::Base.connection.execute("SELECT * FROM users WHERE name = '#{search_name}' and password = '#{search_password}'")
    if @users.empty?
      redirect_to '/sessions/new'
    else
      puts @users
      @user = @users.first 
      cookies[:user_id] = @user[0]
      redirect_to '/'
    end 

  end

  def delete
    cookies.delete(:user_id)
    redirect_to '/'
  end
end
