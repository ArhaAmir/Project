class HomeController < ApplicationController
  def index
    @users = User.all
  end
  before_action :authenticate_user!
  def about
  end
end
