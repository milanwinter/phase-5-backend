class Resort < ApplicationRecord
    has_many :reviews
    has_many :favorites
end
