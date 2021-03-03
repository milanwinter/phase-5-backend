class ReviewsController < ApplicationController
    skip_before_action :authorized

    def create
        
        review=Review.create(review_params)
        render json: review
    end

    def index 
        reviews = Review.all
        render json: reviews
    end


    def destroy
        review = Review.find(params[:id])
        review.destroy
        render json: {message: "review was destroyed my dude"}
    end

    private

    def review_params
        params.require(:review).permit(:title,:rating, :content, :user_id, :resort_id)
    end
end
