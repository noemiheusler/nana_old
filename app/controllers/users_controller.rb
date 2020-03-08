class UsersController < ApplicationController

  def discover
    @user = current_user
  end

  def dashboard
    @user = current_user
  end

end
