class ItemsController < ApplicationController
    def index
        @q = Item.ransack(params[:q])
        @items = @q.result.order(id: :DESC).page(params[:id]).per(10)
        @count = @q.result.count
    end
    def show
        @item = Item.find(params[:id])
        @review = Review.new
        @reviews = @item.reviews
    end
end
