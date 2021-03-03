class User < ApplicationRecord
    has_secure_password
    has_many :reviews, dependent: :destroy
    has_many :favorites,dependent: :destroy
    has_many :reviewed_resorts, through: :reviews, source: :resort 
    validates :username, uniqueness: true
end
