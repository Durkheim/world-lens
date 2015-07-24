class User < ActiveRecord::Base
  has_many :photos
  has_many :comments, foreign_key: :commenter_id
  has_many :commented_photos, through: :comments, source: :photo
  has_many :visited_countries
  has_many :countries, through: :visited_countries
  has_many :albums, through: :visited_countries
  has_many :friendships
  has_many :friends, through: :friendships

<<<<<<< HEAD
  validates :email, :format => /.+@.+\..+/
  validates :username, :email, :presence => true, :uniqueness => true 
=======
  validates :email, :presence=> true, :uniqueness => true, :format => /.+@.+\..+/
  validates :username, :presence => true, :uniqueness => true 
>>>>>>> 5d4c8fe3e77af834b452fd332a0037271ad8ed6d


end
