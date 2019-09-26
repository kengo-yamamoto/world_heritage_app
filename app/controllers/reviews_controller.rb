class ReviewsController < ApplicationController
    def index
        @all_ranks = Item.create_all_ranks
    end
    def new
        @review = Review.new
    end
    def create
        @review = current_user.reviews.new(review_params)
        @review.user_id = current_user.id
        @review.item_id = params[:item_id]
        @review.save!
        redirect_to item_review_path(@review.item.id, @review.id)
    end
    def show
        @review = Review.find(params[:id])
    end
    def edit
        @review = Review.find(params[:id])
    end
    def update
        @review = Review.find(params[:id])
        @review.update(review_params)
        redirect_to item_review_path
    end
    def destroy
        
    end
    private
        def review_params
            params.require(:review).permit(:item_id,:user_id, :body, :rate, :title)
        end
end
