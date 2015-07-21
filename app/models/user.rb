class User < ActiveRecord::Base
  has_many :photos
  has_many :comments, foreign_key: :commenter_id
  #don't know if we actually need this association but I built it out anyway
  has_many :commented_photos, through: :comments, source: :photo
  has_many :visited_countries
  has_many :countries, through: :visited_countries
  has_many :albums, through: :visited_countries
  has_many :friendships
  has_many :friends, through: :friendships
end
