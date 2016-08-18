module Users
  class ApplicationController < ::ApplicationController
    def user
      @user ||= User.find_by_username(params[:username] || params[:user_username])
    end
  end
end