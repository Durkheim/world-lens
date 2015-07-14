class VisitedCountry < ActiveRecord::Base
  belongs_to :user
  belongs_to :country
  has_many :albums
end
