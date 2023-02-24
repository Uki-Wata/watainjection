class ApplicationController < ActionController::Base
    before_action :login_user
    def login_user
        @login_user = nil
        unless cookies[:user_id].nil?
            @login_user = User.find_by(id: cookies[:user_id])
        end 
    end 
end
