class Resort < ApplicationRecord
    has_many :reviews
    has_many :favorites


    def get_average_rating
        if self.reviews.length > 0
              rating = self.reviews.reduce(0) {|sum, review| sum + review.rating}/(self.reviews.length)
        else
            "no reviews"
        end
      
    end
end
