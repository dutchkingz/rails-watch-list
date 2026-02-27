class List < ApplicationRecord
  # Associations
  # Felete bookmarks when the list is deleted
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  # Validations
  validates :name, presence: true, uniqueness: true
end
