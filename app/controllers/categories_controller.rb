class CategoriesController < ApplicationController
    def index
        @categories = Category.all
        @community = @categories[0]
        @housing = @categories[1]
        @redlight = @categories[2]
        @guns = @categories[3]
        @personals =@categories[4]
        @services = @categories[5]
        
    end
    def show
        @listings = Listing.where(category_id: params[:id])
    end
end