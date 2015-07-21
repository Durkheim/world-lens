class Tag < ActiveRecord::Base
  has_many :photo_tags
end
