class UsersController < ApplicationController
  before_action :authenticate_user!

  # Renders the default view for the index action.
  def index
    @users = User.all
  end

  # Renders the default view for the show action.
  def show
    @user = User.find(request.params['id'])
  end
end
