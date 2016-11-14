class ListingsController < ApplicationController
  def new
    @listing = Listing.new
  end

  def create
    user = current_user
    @listing = user.listings.new listing_params

    if @listing.save
      redirect_to root_url, notice: 'Create Listing'
    else
      render 'new'
    end
  end

  def index
    @listing = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
  end

  private

    def listing_params
      params.require(:listing).permit(:title, :description, :price, :street_address, :street_number, :town_city, :postal_code, :lng, :lat, :location, :image)
    end
end
