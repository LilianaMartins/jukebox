class Track < ApplicationRecord
  searchkick

  def search_data
  	{
  	  title: title,
  	  artist: artist,
  	  album: album
  	}
  end

  has_one_attached :cover_photo
  has_many :event_tracks

  validates :title, presence: true
  validates :artist, presence: true
  validates :album, presence: true

  validates :cover_photo, attached: true
end
