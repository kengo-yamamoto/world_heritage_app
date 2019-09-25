class ItemsController < ApplicationController
    def index
        @search = Item.ransack(params[:q])
        @q = @search.result
        @items = Item.all
    end
    def show
        @item = Item.find(params[:id])
        @review = Review.new
        @reviews = @item.reviews
    end
    
end
