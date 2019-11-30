class Song < ApplicationRecord
  validates :title, presence: true
  validates :released, presence: true
  if :released
    validates :release_year, presence: true
  else
    validates :release_year, presence: false
  end
  validates :artist_name, presence: true
end
