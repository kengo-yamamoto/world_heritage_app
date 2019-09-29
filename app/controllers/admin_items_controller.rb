class AdminItemsController < ApplicationController
    def index
        @items = Item.all
    end
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
        @item = Item.find(params[:id])
    end
    def edit
        @item = Item.find(params[:id])
    end
    def update
        @item = Item.find(params[:id])
        @item.update(item_params)
        redirect_to admin_item_path(@item.id)
    end
    def destroy
        @item = Item.find(params[:id])
        @item.destroy
        redirect_to admin_items_path
    end
    private
    def item_params
        params.require(:item).permit(:item_image, :item_name, genre_attributes[:id, :genre_name], aria_attributes[:id, :aria_name], country_attributes[:id, :country_name])
    end
end
