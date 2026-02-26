class Bookmark < ApplicationRecord
  # Associations
  belongs_to :movie
  belongs_to :list

# Validations
validates :comment, length: { minimum: 6 }

# ensure the [movie_id, list_id] pair is unique
validates :movie, uniqueness: { scope: :list_id, message: "is already in the list" }
end
