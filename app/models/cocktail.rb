class Cocktail < ApplicationRecord
  has_attachment :photo
  validates :name, presence: true, uniqueness: true
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :reviews, dependent: :destroy
end
