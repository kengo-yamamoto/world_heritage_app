class ReviewsController < ApplicationController
    def new
        @review = Review.new
    end
    def create
        @review = Review.new(review_params)
        @review.save
        redirect_to review_path(@review.id)
    end
    def show
        @review = Review.find(params[:id])
    end
    def edit
        @review = Review.find(params[:id])
    end
    def update
        @review = Review.find(params[:id])
        @review.update
        redirect_to review_path
    end
    def destroy
        
    end
    private
        def review_params
            params.require(:review).permit(:item_id, :body, :rate, :title)
        end
end
