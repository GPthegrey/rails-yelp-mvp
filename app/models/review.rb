class Review < ApplicationRecord

  belongs_to :restaurant, dependent: :destroy
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: [1, 2, 3, 4, 5] }
end
