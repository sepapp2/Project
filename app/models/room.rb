class Room < ActiveRecord::Base
  belongs_to :hotel
  validates_associated :hotel
end
