class Album < ActiveRecord::Base
  belongs_to :visited_country
  has_many :photos

  validates :name, :presence => true 

  def user 
    self.visited_country.user
  end 
end
