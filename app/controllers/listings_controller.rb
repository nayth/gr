class ListingsController < ApplicationController

  def show
    @listing = Listing.find(params[:id])
  end

  def index
    @listing = Listing.all
  end

  def new
    @listing = Listing.new
  end

  def create
    user = current_user
    @listing = user.listings.new listing_params

    if @listing.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  private

    def listing_params
      params.require(:listing).permit(:title, :description, :price, :lat, :lng, :street_address, :street_number, :postal_code, :town_city)
    end
end
