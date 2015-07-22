class Country < ActiveRecord::Base
  has_many :visits, class_name: "Visited_Country"
  has_many :visitors, through: :visits, source: :user
  has_many :albums, through: :visits
end
