class ReviewsController < ApplicationController
    skip_before_action :authorized

    def create
        review=Review.new(review_params)
        if review.save
            render json: review, :include => {:resort => {:only => [:name]}}
        else
            render json: { status: 500, errors: review.errors }
        end 
        
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
