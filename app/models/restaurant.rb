class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], allow_nil: false }

  has_many :reviews, dependent: :destroy
end


# A review must have a parent restaurant.
# A review must have a content and a rating. The rating should be a number between 0 and 5.
# When a restaurant is destroyed, all reviews should be destroyed as well.
