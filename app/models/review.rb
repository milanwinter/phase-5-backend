class Review < ApplicationRecord
  belongs_to :user
  belongs_to :resort
  validates :title, :presence => {message: "Needs a title"}
  validates :rating, presence: true
  validates :content, :presence => {message: "Content can't be empty"}
  validates :content, length: {maximum: 200}
end
