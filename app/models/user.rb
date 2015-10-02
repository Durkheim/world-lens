class User < ActiveRecord::Base
  has_secure_password

  has_many :photos
  has_many :comments, foreign_key: :commenter_id
  has_many :commented_photos, through: :comments, source: :photo
  has_many :visited_countries
  has_many :countries, through: :visited_countries
  has_many :albums, through: :visited_countries
  has_many :friendships
  has_many :friends, through: :friendships
  has_many :friendships_as_friend, foreign_key: :friend_id, class_name: "Friendship"
  has_many :friends_as_friend, through: :friendships_as_friend, source: :user

  validates :email, :presence=> true, :uniqueness => true, :format => /.+@.+\..+/
  validates :username, :presence => true, :uniqueness => true



end
