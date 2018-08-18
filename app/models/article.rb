class Article < ApplicationRecord
  belongs_to :user
  # we need make getters and setters
  has_many :article_categories
  has_many :categories, through: :article_categories

  validates :title, presence: true, length: {minimum: 3, maximum: 50}
  validates :descriptions, presence: true, length: {minimum: 10, maximum: 500}
  validates :user_id, presence: true

end