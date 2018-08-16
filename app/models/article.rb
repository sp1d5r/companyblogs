class Article < ApplicationRecord
  # we need make getters and setters

  validates :title, presence: true, length: {minimum: 3, maximum: 50}
  validates :descriptions, presence: true, length: {minimum: 10, maximum: 500}

end