class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail
  validates :ingredient, presence: true, uniqueness: { scope: :cocktail }
  validates :cocktail, presence: true
  validates :description, presence: true
end
