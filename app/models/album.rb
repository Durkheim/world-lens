class Album < ActiveRecord::Base
  belongs_to :visited_country
  has_many :photos
  has_one :album_creator, through: :photos, source: :poster
end
