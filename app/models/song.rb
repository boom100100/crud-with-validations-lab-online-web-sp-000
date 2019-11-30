class Song < ApplicationRecord
  validates :title, presence: true
  validates :released, presence: true
  validates :release_year, presence: true if :released
  validates :release_year, presence: false !if :released
  validates :artist_name, presence: true
end
