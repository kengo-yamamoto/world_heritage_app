class AdminItemsController < ApplicationController
    def new
        @Item = Item.new
        @genre = Genre.new
        @aria = Aria.new
        @country = Country.new
    end
    def create
        @item = Item.new(item_params)
        @item.save
        redirect_to admin_items_path
    end
    def show

    end
    def edit

    end
    def update

    end
    def destroy
        
    end
    private
    def item_params
        params.require(:item).permit(:item_image, :item_name, genre_attributes[:id, :genre_name], aria_attributes[:id, :aria_name], country_attributes[:id, :country_name])
    end
end
