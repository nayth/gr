class DashboardController < ApplicationController
  before_action :authenticate_user!

  def show
    user = current_user
    @listings = user.listings
  end
end
