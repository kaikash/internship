class UsersController < ApplicationController
  expose_decorated(:user) { find_by_username }
  def show
  end
  private
  def find_by_username
    User.find_by_username params[:username]
  end
end
