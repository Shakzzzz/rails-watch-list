class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :movie, uniqueness: { scope: :list }
  validates :comment, length: { minimum: 6, message: 'Comment cannot be shorter than 6 characters' }
end
