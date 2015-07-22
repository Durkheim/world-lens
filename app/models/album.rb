class Album < ActiveRecord::Base
  belongs_to :visited_country
  has_many :photos
end
