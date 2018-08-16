class Cocktail < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :doses, dependent: :destroy
  #dependent: :destroy destroys all associated doses if cocktail is deleted.
  has_many :ingredients, through: :doses
end
