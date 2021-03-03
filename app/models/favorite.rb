class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :resort
  validates :user, :uniqueness => {:scope => :resort_id}
end
