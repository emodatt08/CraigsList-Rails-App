class ListingsController < ApplicationController
  def new
    @listing = Listing.new
  end
  
  def create
  @listing = Listing.new(listing_params)
 if @listing.save
 redirect_to root_path
  else
    redirect_to root_path
  end
end
  def show
   @listing = Listing.find(params[:id])
  end

private
def listing_params
params.require(:listing).permit(:title,:description,:city,:category_id,:state,:subcategory_id,:zipcode)
   
end
end

