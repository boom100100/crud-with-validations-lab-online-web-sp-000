class Song < ApplicationRecord
  validates :title, presence: true
  validates :released, presence: true
  validates :release_year, presence: true #if :released #== true

  #validates :release_year, presence: false if !:released# == false
  validates :artist_name, presence: true
end
