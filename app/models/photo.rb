class Photo < ActiveRecord::Base
  belongs_to :poster, class_name: "User"
  belongs_to :album
  has_many :photo_tags
  has_many :tags, through: :photo_tags
  has_many :comments
  has_many :commenters, through: :comments
end
